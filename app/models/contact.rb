class Contact < MailForm::Base
  # check docs for more options
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Contact Form",
      :to => "espinozab100@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end