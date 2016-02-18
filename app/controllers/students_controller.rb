class StudentsController < ApplicationController
  def index
    names = Student.first_names
    render :text => "Student first names: #{names}"
  end

  def show
    render :text => "Addresses"
  end
end
