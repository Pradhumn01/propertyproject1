class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.save
      redirect_to @property
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])


    if @property.update(property_params)
      redirect_to @property
    else
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy

    redirect_to root_path
  end

  def property_list
    @properties = Property.all
  end

  private
    def property_params
      params.require(:property).permit(:title, :image, :property_size, :price, :deposit)
    end
end
