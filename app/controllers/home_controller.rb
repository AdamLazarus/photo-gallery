class HomeController < ApplicationController

  def new
    @home = Home.new
  end

  def create
    @home = Home.new
    render :new
  end

  def index
  end
end
