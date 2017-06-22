class UserMailer < ApplicationMailer
  default from: 'vonleny@gmail.com'

  def invite_email(user)
    @user = user
    @url = 'http://www.amazingquest.com'
    mail(to: @user.email, subject: 'You are invited to a Quest!')
  end

end
