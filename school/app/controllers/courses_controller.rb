class CoursesController < ApplicationController
  def show
    @course = Course.all
  end

  def datail
    @datail = Course.find(params[:id])
  end
end
