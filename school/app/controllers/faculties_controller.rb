class FacultiesController < ApplicationController
  def show
    @faculty = Faculty.find(params[:id])
  end
end
