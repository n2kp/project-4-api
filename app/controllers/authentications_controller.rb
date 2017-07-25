class AuthenticationsController < ApplicationController
  skip_before_action :authenticate_user!

  def register
    user = User.new(Uploader.upload(user_params))

    if user.save
      render json: user, status: :ok
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def refresh
    token = Auth.issue({ id: current_user.id, is_dev: current_user.is_dev })
    render json: { token: token, user: UserSerializer.new(current_user) }, status: :ok
  end

  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      token = Auth.issue({ id: user.id, is_dev: user.is_dev })
      render json: { token: token, user: UserSerializer.new(user) }, status: :ok
    else
      render json: { errors: ["Invalid login credentials."] }, status: 401
    end
  end

  private

  def user_params
    params.permit(:username, :firstname, :lastname, :email, :password, :password_confirmation, :base64, :is_dev, :portfolio_url, :linkedin_url, :github_url, :tech_stack )
  end
end
