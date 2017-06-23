class UserMailer < ApplicationMailer
  default from: 'amazingquestco@gmail.com'

# This is code for the invite method on the User model that we might not need anymore becuase of the two methods below
  # def invite_email(user)
  #   @user = user
  #   @url = 'http://www.amazingquest.co'
  #   mail(to: @user.email, subject: 'You are invited to a Quest!')
  # end

  

end
