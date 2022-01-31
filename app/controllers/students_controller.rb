class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def specific
    student = Student.find_by(id: params[:id])
    render json: student
  end
end
