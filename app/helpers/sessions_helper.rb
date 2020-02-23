module SessionsHelper

  # Logs in the given customer. 
  def log_in(customer)
    
    serssion[:customer_id] = customer.id 
  
  end 

  # Returns the current logged-in customer (if any).
  def current_customer
  	
    if session[:customer_id]
      
  		@current_customer ||= Customer.find_by(id: session[:customer_id])
  	
    end
  
  end

  def logged_in?
  	
    !current_customer.nil?
  
  end 

  def log_out 
  	
    session.delete(:customer_id)
  	
    @current_customer = nil
  
  end

end
