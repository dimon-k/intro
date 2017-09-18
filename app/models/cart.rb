class Cart < ActiveRecord::Base
  enum state: [:created, :completed]

  belongs_to :user
  belongs_to :product
end
