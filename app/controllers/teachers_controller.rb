class TeachersController < ApplicationController
  def index
  	@teachers = Teacher.all

  end

def new
  @teacher = Teacher.new
end

def show
end

def edit
end

  def import
  	Teacher.import(params[:file])
  	redirect_to root_url, notice: "Teachers imported."
  end

  def create
  	@teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher, notice: 'Teacher was successfully updated.'
      else
        render action: 'new'
        end
        #Teacher.create(teacher_params)
  end
def destroy
    @teacher.destroy
    redirect_to teachers_url 
  end

private
def teacher_params
  params.require(:teacher).permit(:name, :school, :displayname, :grade)
end
end
