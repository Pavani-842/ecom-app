class AddressesController < ApplicationController
    before_action :set_address, only: [:show, :edit, :update, :destroy]
  
    def index
      @addresses = Address.all
    end
  
    def show
    end
  
    def new
      @address = Address.new
    end
  
    def create
      @address = Address.new(address_params)
  
      if @address.save
        redirect_to @address, notice: 'Address was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @address.update(address_params)
        redirect_to @address, notice: 'Address was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @address.destroy
      redirect_to addresses_url, notice: 'Address was successfully destroyed.'
    end
  
    private
  
    def set_address
      @address = Address.find(params[:id])
    end
  
    def address_params
      params.require(:address).permit(:name, :phone, :address_line_1, :address_line_2, :city, :state, :country, :pin, :customer_id)
    end
  end
  