require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #testing to make sure that each of the fields has the correct values
  #   assert true
  # end
  
  test "should return contact email" do
    mail = ContactMailer.contact_email("caroline@example.com",
    "Caroline Selwood", "1234567890", @message = "Coursework")
    
    assert_equal ['moduleselector@email.com'], mail.to
    assert_equal ['moduleselector@email.com'], mail.from
  end


end
