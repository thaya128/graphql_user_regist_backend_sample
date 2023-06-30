module Resolvers
  class AuthQuery < Resolvers::BaseQuery
    def authorized?(*_args)
      raise GraphQL::ExecutionError.new(
        'permission denied',
        extensions: {
          code: 'AUTHENTICATION_ERROR'
        }
      ) unless context[:current_user]

      true
    end
  end
end