class Charge < ActiveRecord::Base
  belongs_to :customer

  def status
    if self.paid == true && self.refunded == false
      "successful"
    elsif self.paid == true && self.refunded == true
      "disputed"
    else
      "failed"
    end

  end
end
