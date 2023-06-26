module Mutations
  class UpdateBook < Mutations::BaseMutation
    field :book, Types::BookType, null: false

    argument :id, ID, required: true
    argument :params, InputTypes::Book, required: true

    def resolve(id:, params:)
      book = Book.find(id)
      book.update!(params.to_h)

      { book: book }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
