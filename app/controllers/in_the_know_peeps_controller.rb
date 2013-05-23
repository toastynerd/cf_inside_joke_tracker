class InTheKnowPeepsController < ApplicationController
  before_filter :find_peep, :only => [:show, :edit, :update, :destroy]

  def index
    @in_the_know_peeps = InTheKnowPeep.all
  end

  def new
    @in_the_know_peep = InTheKnowPeep.new
  end

  def create
    @in_the_know_peep = InTheKnowPeep.new(params[:id])
    if @in_the_know_peep.save
      flash[:notice] = "You just created a new peep."
      redirect_to @in_the_know_peep 
    else
      flash[:alert]="Unable to create peep."
      render :action => "index"
    end
  end

  def show
    #
  end

private
  
  def find_peep
    @in_the_know_peep = InTheKnowPeep.find(params[:id])
  end
end
