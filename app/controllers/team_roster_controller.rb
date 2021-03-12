class TeamRosterController < ApplicationController
  def index
    @student = Student.order('id ASC')
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash.notice = "Student created"
      redirect_to(team_roster_index_path)
    else
      render('new')
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash.notice = "Student updated"
      redirect_to(team_roster_path(@student))
    else
      render("edit")
    end
  end

  def delete
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to(team_roster_index_path)
  end
  

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :class_year, :email, :phone)
    end
  end