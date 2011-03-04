class CatsController < ApplicationController


  def index
   @cats = Cat.all
  end

  def create
    @cat = Cat.new(params[:cat])
    if @cat.save
      redirect_to cats_path
    else
      puts "\n#{@cat.errors.inspect}\n"
      render :action => :index
    end
  end

end
