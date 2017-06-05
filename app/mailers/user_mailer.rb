class UserMailer < ApplicationMailer
	default from: "railsbatch41@gmail.com"
	def sample_email(travel,user)
	    @user = user
	    @travel = travel
	    mail(to: @user.email, subject: 'Sample Email')
	  end
end
