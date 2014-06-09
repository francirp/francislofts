class Contact < ActiveRecord::Base
  after_create :send_thank_you_email

  private

    def send_thank_you_email
      SiteMailer.thank_you(self).deliver
    end

end
