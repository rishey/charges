class Charge < ActiveRecord::Base
  belongs_to :customer
  before_save :compute_status
  validates :created, :amount, :currency, :customer_id,  presence: true
  validates_inclusion_of :paid, :refunded, :in => [true, false]


  def compute_status
    if self.paid == true && self.refunded == false
      self.status = "successful"
    elsif self.paid == true && self.refunded == true
      self.status = "disputed"
    else
      self.status = "failed"
    end
  end

end
