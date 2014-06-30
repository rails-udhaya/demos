class Emailer < ActionMailer::Base
    default from: "udhayakumar.dhanabalan@gmail.com"
    
  def check_email(to_which,subject)
				if Rails.env != "development"
						@url_checked = to_which
						@subject = subject
						mail(:to => "udhayakumar.dhanabalan@gmail.com", :subject => @subject)
				end
  end
  
end
