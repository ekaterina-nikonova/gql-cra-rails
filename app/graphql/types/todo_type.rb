module Types
  class TodoType < BaseObject
    field :id, ID, null: false
    field :title, String, null: true
  end
end
