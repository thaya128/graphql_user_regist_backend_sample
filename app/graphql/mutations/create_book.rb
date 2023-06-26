module Mutations
  class CreateBook < Mutations::BaseMutation
    field :book, Types::BookType, null: false

    argument :params, InputTypes::Book, required: true

    def resolve(params:)
      book = Book.create!(params.to_h)

      { book: book }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
