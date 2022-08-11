class V1::MostRecentController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # skip_before_action :authenticate_user!
  skip_before_action :authorize_request, only: :index
  skip_before_action :verify_authenticity_token

  def index
    render json: Hotel.order(created_at: :desc).limit(10)
  end
end
