class Todo < ApplicationRecord
  after_save :notify_subscriber_of_addition

  belongs_to :user

  private

  def notify_subscriber_of_addition
    GqlCraSchema.subscriptions.trigger("todoAdded", {}, self)
  end
end
