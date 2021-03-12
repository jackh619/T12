class CommitmentController < ApplicationController
  def index
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.find(params[:id])
    @event = Event.all.first
    @events = Event.all
  end


  def create
    # puts student_params
    @event = Event.find(params[:event][:id])
    @student = Student.find(params[:event][:student_id])
    Commitment.create({student:@student, event:@event})
    # @events = Event.find(student_params)
    if @student.save
      flash.notice = "Student created"
      redirect_to(team_roster_index_path)
    else
      render('new')
    end
  end

  def show
    @student = Student.find(params[:id])
    @commitments = Commitment.where(student_id: @student.id)
  end

  def edit
    @commitment = Commitment.find(params[:id])
    @student = Student.find(@commitment.student_id)
    @event = Event.find(@commitment.event_id)
    @events = Event.all
  end

  def update
    @commitment = Commitment.find(params[:commitment][:commitment_id])
    @event = Event.find(params[:commitment][:id])
    if @commitment.update(:event_id => @event.id)
      flash.notice = "Commitment updated"
      redirect_to(team_roster_path)
    else
      render("edit")
    end
  end

  def delete
    @commitment = Commitment.find(params[:id])
    @student = Student.find(@commitment.student_id)
    @event = Event.find(@commitment.event_id)
  end

  def destroy
    puts params
    @commitment = Commitment.find(params[:commitment][:commitment_id])
    @commitment.destroy
    # @student = Student.find(params[:id])
    # @student.destroy
    redirect_to(team_roster_index_path)
  end
  

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :class_year, :email, :phone)
    end
  end
