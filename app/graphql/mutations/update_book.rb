module Mutations
  class UpdateBook < Mutations::BaseMutation
    field :book, Types::BookType, null: false

    argument :id, ID, required: true
    argument :title, String, required: false
    argument :discription, String, required: false

    def resolve(id:, title:, discription:)
      book = Book.find(id)
      book.update!(title: title, discription: discription)
      { book: book }
    rescue => e
      GraphQL::ExecutionError.new(e.message)
    end
  end
end
