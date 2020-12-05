class FacultiesController < ApplicationController
  def show
    @faculty = Faculty.find(1)
  end
end
