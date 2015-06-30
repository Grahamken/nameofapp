def thank_you
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  ActionMailer::Base.mail(:from => @email, 
	  	:to => 'grahamken@hotmail.com', 
	  	:subject => "A new contact form message from #{@name}", 
	  	:body => @message).deliver
end