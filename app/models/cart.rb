class Cart < ActiveRecord::Base
  enum state: [:new, :complete]

  belongs_to :user
  has_many :products
end
