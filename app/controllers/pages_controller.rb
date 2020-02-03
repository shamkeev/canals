class PagesController < ApplicationController
  def home
    @layers = Layer.all
    @infras = InfraProject.all
  end
end
