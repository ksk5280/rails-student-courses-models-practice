class CoursesController < ApplicationController
  def index
    courses = Course.list
    render :text => "List of courses: #{courses}"
  end
end
