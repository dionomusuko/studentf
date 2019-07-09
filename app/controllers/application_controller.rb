class ApplicationController < ActionController::Base
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_id: params[:student][:student_id], name: params[:student][:name], mail: params[:student][:mail])
    if @student.save
      flash[:notice] = '1レコード追加しました!'
      redirect_to '/'
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to '/'
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    student = Student.find(params[:id])
    student.update(student_id: params[:student][:student_id], name: params[:student][:name], mail: params[:student][:mail])
    if student.save
      flash[:notice] = 'レコードを変更しました!'
    redirect_to '/'
    else
      render 'edit'
    end
  end

end
