module Mutations
  class CreateBook < Mutations::BaseMutation
    field :book, Types::BookType, null: false

    argument :title, String, required: false
    argument :discription, String, required: false

    def resolve(**args)
      book = Book.create!(args)
      { book: book }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
