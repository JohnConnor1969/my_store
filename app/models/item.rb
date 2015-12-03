class Item < ActiveRecord::Base
  # attr_accessible :price, :name, :real, :weight, :description
  def create
    Item.create(item_params)
  end

  private

    def item_params
      params.require(:Item).permit(:price, :name, :real, :weight, :description)
    end

  # validates :price, {numericality: {greater_than: 0, allow_nil: true}}
  # validates :name, presence: true

  # has_and_belongs_to_many :carts
  has_many :positions
  has_many :carts, through: :position
  has_many :comments, as: :commentable

  after_initialize {puts "initialized"}
  after_save {puts "saved"}
  after_create {puts "created"}
  after_update {puts "updated"}
  after_destroy {puts "destroyed"}
end
