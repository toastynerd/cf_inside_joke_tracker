class BooksController < ApplicationController
  before_filter :find_book, :only => [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      flash[:notice] = "#{@book.name} was created."
      redirect_to @book
    else
      flash[:alert] = "Could not create book."
      render "new"
    end
  end

  def show
    #
  end

  def edit
    #
  end

  def update
    if @book.save
      flash[:notice]= "Book has been updated."
      redirect_to @book
    else
      flash[:notice] = "Could not update book."
      render "edit"
    end
  end

  def destroy
    @book.destroy
    flash[:notice]= "Burned that book, it was probably full of devil worship."
    redirect_to books_path
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end
end
