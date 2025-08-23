class ContactMailer < ApplicationMailer
  default from: "tripathiabhishekda@gmail.com"

  def notify_admin(name, email, message)
    @name = name
    @message = message
    mail(
      to: "tripathiabhishekda@gmail.com",
      subject: "New Contact Message from #{@name} (#{email})"
    )
  end

  def thank_you(name, email)
    @name = name
    mail(
      to: email,
      subject: "Thanks for contacting me!"
    )
  end
end
