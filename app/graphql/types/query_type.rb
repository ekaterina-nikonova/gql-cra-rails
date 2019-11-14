module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :all_todos, [TodoType], null: false
    def all_todos
      context[:current_user].todos
    end
  end
end
