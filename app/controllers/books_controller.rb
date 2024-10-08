class BooksController < ApplicationController
  before_action :authenticate_user!
  include Pagy::Backend
  def index
    data = Book.order(published: :desc)
    @pagy, @books = pagy(data, limit: 8)
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      MailerCreatedBooksJob.perform_async(current_user.email)
      redirect_to books_path, notice: "Buku berhasil dibuat."
    else
      @authors = Author.all
      render :new
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :published, :author_id) # Menyesuaikan dengan atribut yang ada
  end
end
