class JobsController < ApplicationController
  def index
    @jobs = if params[:search]
              Job.where("name ILIKE ?", "%#{params[:search]}%")
            else
              Job.all
            end

    @jobs = @jobs.order(created_at: :desc) unless params[:column]
    @jobs = @jobs.order("#{params[:column]} #{params[:direction]}")
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to jobs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    params[:status] = params[:status].to_i
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to jobs_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @job = Job.find(params[:id])
    @note = @job.notes.build
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy!

    redirect_to root_path, status: :see_other
  end

  private


  def job_params
    params.require(:job).permit(:name, :due_datetime, :status, :client_name, :client_email, :client_mobile)
  end
end
