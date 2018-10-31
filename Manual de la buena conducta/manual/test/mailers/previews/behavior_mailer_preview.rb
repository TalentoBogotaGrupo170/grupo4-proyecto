# Preview all emails at http://localhost:3000/rails/mailers/behavior_mailer
class BehaviorMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        BehaviorMailer.welcome_behavior(User.first)
      end
end
