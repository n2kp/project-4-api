class OauthController < ApplicationController
  skip_before_action :authenticate_user!

  def github
    token = HTTParty.post("https://github.com/login/oauth/access_token", {
      query: {
        client_id: ENV["GITHUB_RUBYOAUTH_CLIENT_ID"],
        client_secret: ENV["GITHUB_RUBYOAUTH_CLIENT_SECRET"],
        code: params[:code]
      },
      headers: { "Accept" => "application/json" }
      }).parsed_response

      profile = HTTParty.get("http://api.github.com/user", {
        query: token,
        header: { "User-Agent" => "HTTParty", "Accept" => "application/json"}
      }).parsed_response

      p profile

      user = User.where("github_id = :github_id OR email = :email", github_id: profile["id"], email: profile["email"]).first

      user = User.new username: profile["login"], email: profile["email"] unless user

      user[:github_id] = profile["id"]

      if user.save
        token = Auth.issue({ id: user.id })
        render json: { user: UserSerializer.new(user), token: token }
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
  end

  def facebook
    token = HTTParty.post('https://facebook.com/login/oauth/access_token', {
      query: {
        client_id: ENV["FACEBOOK_APP_ID"],
        client_secret: ENV["FACEBOOK_APP_SECRET"],
        redirect_uri: 'http://localhost:7000/',
        code: params[:code]
      },
      headers: { 'Accept' => 'application/json'}
      }).parsed_response

      profile = HTTParty.get("https://graph.facebook.com/v2.5/me?fields=id,name,email", {
        query: token,
        headers: { "Accept" => "application/json" }
        }).parsed_response

        p '____________________PROFILE ____________________________'
        p profile
        user = User.where("facebook_id = :facebook_id OR email = :email", email: profile["email"], facebook_id: profile["id"]).first

        user = User.new username: profile["name"], email: profile["email"] unless user

        user[:facebook_id] = profile["id"]
        if user.save
          token = Auth.issue({ id: user.id })
          render json: { user: UserSerializer.new(user), token: token }, status: :ok
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
  end

end
