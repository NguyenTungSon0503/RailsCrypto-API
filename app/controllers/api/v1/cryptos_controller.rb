class Api::V1::CryptosController < ApplicationController
    before_action :set_crypto, only: %i[ show update destroy ]
    # GET /cryptos
    def index
      @cryptos = Crypto.all
  
      render json: @cryptos
    end
  
    # GET /cryptos/1
    def show
      render json: @crypto
    end
  
    # POST /cryptos
    def create
      @crypto = Crypto.new(crypto_params)
  
      if @crypto.save
        render json: @crypto, status: :created, location: @crypto
      else
        render json: @crypto.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /cryptos/1
    def update
      if @crypto.update(crypto_params)
        render json: @crypto
      else
        render json: @crypto.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /cryptos/1
    def destroy
      @crypto.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_crypto
        @crypto = Crypto.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def crypto_params
        params.require(:crypto).permit(:symbol, :user_id, :cost_per, :amount_owned)
      end
end
  