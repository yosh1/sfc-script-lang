class FacultiesController < ApplicationController
  def show
    # url paramで学部を指定
    @faculty = Faculty.find(params[:id])
    @students = @faculty.students
  end
end