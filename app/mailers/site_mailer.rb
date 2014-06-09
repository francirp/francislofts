class SiteMailer < ActionMailer::Base
  default from: "Francis Lofts & Bunks <info@adultbunkbeds.com>"

  def self.admin_email_address
    "ryan@francislofts.com"
  end

  def thank_you(contact)
    @contact = contact
    correct_email = Rails.env.production? ? @contact.email : SiteMailer.admin_email_address
    mail(
      to: correct_email,
      subject: "Thanks for Stopping By Our Booth!"
      )
  end

end
