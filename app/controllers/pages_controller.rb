class PagesController < ApplicationController
  def home
    @layers = Layer.all
  end
end
