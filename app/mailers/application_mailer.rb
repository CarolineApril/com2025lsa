class ApplicationMailer < ActionMailer::Base
  default to: "moduleselector@email.com", from: "moduleselector@email.com"
  layout 'mailer'
end
