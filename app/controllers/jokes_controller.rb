class JokesController < ApplicationController
  before_filter :find_book
  before_filter :find_joke, :only => [:show, :edit, :update, :destroy]

  def index
    @jokes = @book.jokes.all
  end

  def new
    @joke = @book.jokes.build
  end

  def create
    @joke = @book.jokes.build(params[:joke])
    if @joke.save
      flash[:notice] = "Joke has been created."
      redirect_to [@book,@joke]
    else
      flash[:alert] = "Joke could not be created"
      render :action => "new"
    end
  end

  def show
    #
  end

  def edit
    #
  end

  def update
    if @joke.update_attributes(params[:joke])
      flash[:notice] = "Joke has been updated."
      redirect_to [@book,@joke]
    else
      flash[:alert]= "Ticket could not be updated."
      render :action => "edit"
    end
  end

  def destroy
    @joke.destroy
    flash[:notice]="Joke has been deleted."
    redirect_to @book
  end

private
  def find_book
    @book = Book.find(params[:book_id])
  end

  def find_joke
    @joke = Joke.find(params[:id])
  end

end
