class ChargesController < ApplicationController

  def index
    @failed_charges = Charge.where(status:"failed")
    @disputed_charges = Charge.where(status:"disputed")
    @successful_charges = Charge.where(status:"successful")
  end

end