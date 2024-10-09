class Apis::BooksController < ApplicationController
  before_action :authenticate_user!, except: [ :list ]

  def list
    @books = Book.all

    render json: {
      data: @books.map { |book| book.as_json(except: [ :id, :created_at, :updated_at ]).merge(author_name: book.author.name) },
      status: :ok
    }
  end

  def restricted_list
    @books = Book.includes(:author).all

    render json: {
      data: @books.map { |book|
        book.as_json.merge(author: book.author)
      },
      status: :ok
    }
  end
end
