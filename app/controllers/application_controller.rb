class ApplicationController < ActionController::Base
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.new(student_id: params[:student][:student_id], name: params[:student][:name], mail: params[:student][:mail])
    student.save
    redirect_to '/'
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to '/'
  end

  def update
    student = Student.find(params[:id])
    student_id = params[:student][:student_id]
    name = params[:student][:name]
    mail = params[:student][:mail]
    student.update(student_id: student_id)
    student.update(name: name)
    student.update(mail: mail)
    redirect_to '/'
  end

  def edit
    @student = Student.find(params[:id])
  end
end
