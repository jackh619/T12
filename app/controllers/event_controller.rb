class EventController < ApplicationController
  def index
    @student = Student.order('id ASC')
    @event = Event.order('id ASC')
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash.notice = "event created"
      redirect_to(event_index_path)
    else
      render('new')
    end
  end

  def show
    @event = Event.find(params[:id])
    commitments = Commitment.where(event_id: @event.id)
    student_ids = Array.new
    commitments.each do |commitment|
      student_ids.push(commitment.student_id)
    end

    @students = Array.new
    student_ids.each do |student_id|
      @students.push(Student.where(id: student_id).first)
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash.notice = "event updated"
      redirect_to(event_path(@event))
    else
      render("edit")
    end
  end

  def delete
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to(event_index_path)
  end
  

  private
    def event_params
      params.require(:event).permit(:event_id, :event_name, :event_type, :date_time, :location, :description)
    end

    def helper_params
      params.permit(:event_id, :event_name, :event_type, :date_time, :location, :description)
    end
    
  end
