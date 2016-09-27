class StudentsController < ApplicationController
  def index
    p params
    @cohort = Cohort.find(params[:cohort_id])
    @students = @cohort.students
  end

  def show
  end

  def edit
    if params[:student][:enrollment]
      p "ENROLLMENT CHANGE"
    else
      # NORMAL EDIT FUNCTION HAPPENS
    end
  end

  def delete
  end
end
