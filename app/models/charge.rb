class Charge < ActiveRecord::Base
  belongs_to :customer
  before_save :compute_status
  validates :created, :amount, :currency, :customer_id,  presence: true
  validates_inclusion_of :paid, :refunded, :in => [true, false]
  validates :created, length: { is: 10 }

  def compute_status
    if self.paid == true && self.refunded == false
      self.status = "successful"
    elsif self.paid == true && self.refunded == true
      self.status = "disputed"
    else
      self.status = "failed"
    end
  end

  def money
   "%.2f #{self[:currency]}" % self[:amount]
  end

  def status_date
    Date.parse(DateTime.strptime(self.created.to_s,'%s').to_s).strftime("%m/%d/%Y")
  end

end
