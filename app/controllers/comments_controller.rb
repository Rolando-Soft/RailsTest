class CommentsController < ApplicationController
  def new
    @meter = Equipment.find(params[:meter_id])
    @comment = @meter.comments.new
  end
  
  def create
    @meter = Equipment.find(params[:meter_id])
    @comment = @meter.comments.new(comment_params)
    if @comment.save
      redirect_to meter_path(params[:meter_id])
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comments).permit(:comment)
  end
  
end
