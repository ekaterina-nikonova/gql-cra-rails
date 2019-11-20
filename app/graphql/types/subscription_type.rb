module Types
  class SubscriptionType < Types::BaseObject
    field :todoAdded, Types::TodoType, null: false
    def todo_added
      #
    end
  end
end