class ReturnsController < ApplicationController
  def new
    @return = Return.new
  end

  def create
    @return = Return.new(return_params)
    if @return.save
      #instead of redirecting to the index this will go to the edit/update portion of the controller
      redirect_to edit_return_path(@return.id), notice: 'Return created successfully'
    else
      render :new
    end
  end

  def edit
    @return = Return.find(params[:id])
    @return_question = ReturnQuestion.new
  end

  private

  def return_params
    params.require(:return).permit(:id, :return_type, :difficulty_score, :return_details)
  end
end
