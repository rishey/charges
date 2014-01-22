class ChargesController < ApplicationController

  def index
    failed = Charge.where(status:"failed")
    disputed = Charge.where(status:"disputed")
    successful = Charge.where(status:"successful")
    @all_charges = [failed, disputed, successful]
  end

end