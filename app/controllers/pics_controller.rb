class PicsController < ApplicationController

  def index

  end

  def new
    @pic=Pic.new
  end

  def create
    @pic=Pic.new(picParams)
  end

  private
  def picParams
    params.require(:pic).permit(:title,:description)
  end

end
