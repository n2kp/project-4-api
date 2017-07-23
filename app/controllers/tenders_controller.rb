class TendersController < ApplicationController
  before_action :set_tender, only: [:show, :update, :destroy]

  # GET /tenders
  def index
    @tenders = Tender.all

    render json: @tenders
  end

  # GET /tenders/1
  def show
    render json: @tender
  end

  # POST /tenders
  def create
    # @tender = Tender.new(tender_params)
    @tender = Tender.new(Uploader.upload(tender_params))
    @tender.user = current_user

    if @tender.save
      render json: @tender, status: :created, location: @tender
    else
      render json: @tender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tenders/1
  def update
    # if @tender.update(tender_params)
    if @tender.update(Uploader.upload(tender_params))
      render json: @tender
    else
      render json: @tender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tenders/1
  def destroy
    @tender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tender
      @tender = Tender.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tender_params
      params.permit(:bid, :pitch, :base64, :is_active, :status, :user_id, :project_id)
    end
end
