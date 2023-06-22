module Resolvers
  class BookResolver < Resolvers::BaseResolver
    description 'Find a book by ID'
    type Types::BookType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      Book.find(id)
    end
  end
end
