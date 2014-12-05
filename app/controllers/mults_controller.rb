class MultsController < ApplicationController
  def index
    @mults = Mult.all
  end

  def search
  end
end
