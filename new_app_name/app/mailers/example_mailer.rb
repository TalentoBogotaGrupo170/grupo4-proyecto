class ExampleMailer < ApplicationMailer
    default from: "goodbehavior165@gmail.com"
    def say_welcom(user)
        @user = user
        mail(to: @user.email, subject: 'Bienvenido a nuestra app super wow :)')

    end
end
