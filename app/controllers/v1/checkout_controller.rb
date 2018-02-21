module V1
  class CheckoutController < ApplicationController
    def index
      api_infos = [
        { endpoint: 'V1::CheckoutController', version: 'edge' },
      ]
      render json: api_infos
    end

    def show
    end
  end
end
