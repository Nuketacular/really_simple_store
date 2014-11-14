class FinderController < ApplicationController
  
  def index
    @customers = Customer.all  
  end
  
  def alphabet
    @customers = Customer.order(:full_name)
  end
  
  def missing_email
    @customers = Customer.where("email = ''")
  end
  
end
