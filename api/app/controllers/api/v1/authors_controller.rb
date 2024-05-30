class Api::V1::AuthorsController < ApplicationController
  def index
    authors = Author.all
    render json: { data: authors.map { |author| 
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
      }
  end
end
