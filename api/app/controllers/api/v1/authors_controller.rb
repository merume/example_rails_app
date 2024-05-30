class Api::V1::AuthorsController < ApplicationController
  def index
    authors = Author.includes(:books).all
    render json: authors.map { |author| 
          {
            id: author.id,
            name: author.name,
            books: author.books.map { |book| 
              {
                id: book.id,
                title: book.title
              }
            }
          }
        } 
  end
end
