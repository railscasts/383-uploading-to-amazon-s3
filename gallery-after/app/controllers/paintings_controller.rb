class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    @uploader = Painting.new.image
    @uploader.success_action_redirect = new_painting_url
  end

  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @painting = Painting.new(key: params[:key])
  end

  def create
    @painting = Painting.new(params[:painting])
    if @painting.save
      redirect_to paintings_url, notice: "Painting was successfully created."
    else
      render :new
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update_attributes(params[:painting])
      redirect_to paintings_url, notice: "Painting was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to paintings_url, notice: "Painting was successfully destroyed."
  end
end
