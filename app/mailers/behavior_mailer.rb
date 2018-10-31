class BehaviorMailer < ApplicationMailer

    default from: "goodbehavior165@gmail.com"

    def welcome_behavior(user)
      @user = user
      mail(to: @user.email, subject: 'Sample Email')
    end

end
