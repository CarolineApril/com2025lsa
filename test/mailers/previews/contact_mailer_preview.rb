# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview #example email
    
    def contact_email
        ContactMailer.contact_email("caroline@example.com",
        "Caroline Selwood", "1234567890", @message = "Coursework")
    end

end
