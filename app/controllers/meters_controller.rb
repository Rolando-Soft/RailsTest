class MetersController < ApplicationController
  def index
    @meters=Equipment.all
  end

  def show
    @meter = Equipment.find(params[:id])
  end

  def edit
    @meter = Equipment.find(params[:id])
  end
  
  def update
    meter = Equipment.find(params[:id])
    meter_params = params.require(:equipment).permit(:serial, :techid)
    meter.update(meter_params)
    redirect_to meter_path
  end
  
  def new
    @meter = Equipment.new
  end

  def create
    @meter = Equipment.new(equip_params)
    if @meter.save
      redirect_to meter_path(@meter)
    else
      render 'new'
    end
  end
  
  private
  
  def equip_params
    params.require(:equipment).permit(:serial, :techid)
  end

end
