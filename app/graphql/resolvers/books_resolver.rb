module Resolvers
  class BooksResolver < Resolvers::BaseResolver
    description 'Find a book by ID'
    type [Types::BookType], null: false

    def resolve
      Book.all.order(:id)
    end
  end
end
