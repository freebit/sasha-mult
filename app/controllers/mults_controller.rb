class MultsController < ApplicationController

  def index
    @mults = Mult.all
  end
end
