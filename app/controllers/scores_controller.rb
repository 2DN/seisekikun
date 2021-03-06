class ScoresController < ApplicationController
  before_action :authenticate_user!
  def index
    @scores = Score.all
  end

  def new
    @score = Score.new
  end

  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show
    @score = Score.find(params[:id])
  end


  private

  def score_params
    params.require(:score).permit(:title, :japanese, :math, :science, :social, :english).merge(user_id: current_user.id)
  end

end
