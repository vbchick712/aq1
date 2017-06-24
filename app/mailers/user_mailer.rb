class UserMailer < ApplicationMailer

  default from: 'amazingquestco@gmail.com'

  def invite_email(user)
    @user = user
    @url = 'http://www.amazingquest.co'
    mail(to: @user.email, subject: 'You are invited to an Amazing Quest!')
  end

end
