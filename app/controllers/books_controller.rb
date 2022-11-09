class BooksController < ApplicationController
  def index
    #一覧表示のための変数
    @books = Book.all
    #新規投稿のための変数
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to user_path #userのshow画面にリダイレクト
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
