module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :book, resolver: Resolvers::BookResolver
    field :books, resolver: Resolvers::BooksResolver
  end
end
