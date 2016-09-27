class StudentsController < ApplicationController
  def index
    @student = Student.new
    @cohort = Cohort.find(params[:cohort_id])
    @enrolled_students = @cohort.students.where(enrollment: 1)
    @not_enrolled_students = @cohort.students.where(enrollment: 0)
  end

  def show
  end

  def edit
    @student = Student.find(params[:id])
    @cohort = @student.cohort
  end

  def create
    @cohort = Cohort.find(params[:cohort_id])
    @student = @cohort.students.create(student_params)
    redirect_to cohort_students_path(@cohort)
  end

  def update
    @student = Student.find(params[:id])
    @cohort = @student.cohort
    if @student.update(student_params)
      redirect_to cohort_students_path(@cohort)
    else
      render 'edit'
    end
  end


  def delete
  end



  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :enrollment)
    end
end
