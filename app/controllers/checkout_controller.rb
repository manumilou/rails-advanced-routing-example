class CheckoutController < ApplicationController
  def index
    api_infos = [
      { endpoint: 'CheckoutController', version: 'legacy' },
    ]
    render json: api_infos
  end

  def show
  end
end
