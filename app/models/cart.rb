class Cart < ActiveRecord::Base
  enum state: [:created, :completed]

  belongs_to :user
  has_many :products
end
