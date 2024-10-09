class BooksMailer < ApplicationMailer
  default from: "no-reply@sample_email.com"

  def book_created(email)
    mail(to: email, subject: "Your book was created")
  end
end
