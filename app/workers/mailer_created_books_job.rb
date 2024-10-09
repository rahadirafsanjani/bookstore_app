class MailerCreatedBooksJob
  include Sidekiq::Job

  def perform(email)
    BooksMailer.book_created(email).deliver_now
  end
end
