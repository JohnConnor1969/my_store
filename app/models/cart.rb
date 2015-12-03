class Cart < ActiveRecord::Base
  has_many :positions
  has_many :items, through: :position
  belongs_to :user
  # has_and_belongs_to_many :items
end
