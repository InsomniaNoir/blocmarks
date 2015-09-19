class UserMailer < ApplicationMailer
  def send_simple_message
    RestClient.post "https://api:key-7d54cfb6a5a0b5c2f175d5b42e81d809"\
    "@api.mailgun.net/v3/sandboxc45bc17fecd24389b2c081fef738b88b.mailgun.org/messages",
      :from => "Mailgun Sandbox <postmaster@sandboxc45bc17fecd24389b2c081fef738b88b.mailgun.org>",
      :to => "Jeremiah Shafer <jrshafer@mac.com>",
      :subject => "Hello Jeremiah Shafer",
      :text => "This is a confirmation e-mail from Blocmarks!"
  end
end
