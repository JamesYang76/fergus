class NotesController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @note = @job.notes.create(note_params)
    if @note.valid?
      redirect_to job_path(@job)
    else
      render 'jobs/show', status: :unprocessable_entity
    end
  end

  def edit
    @job = Job.find(params[:job_id])
    @note = @job.notes.find(params[:id])
  end

  def update
    @job = Job.find(params[:job_id])
    @note = @job.notes.find(params[:id])
    if @note.update(note_params)
      redirect_to job_path(@job)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @job = Job.find(params[:job_id])
    @note = @job.notes.find(params[:id])
    @note.destroy!
    redirect_to job_path(@job), status: 303
  end

  private

  def note_params
    params.require(:note).permit(:commenter, :body)
  end
end
