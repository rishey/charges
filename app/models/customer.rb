class Customer < ActiveRecord::Base
  has_many :charges, :dependent => :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, :last_name, format:{ with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end
