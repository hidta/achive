class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(blog)
    @blog = blog

    mail to: "tahkyu3@outlook.jp",
         subject: '【Achive】ブログが投稿されました！'
  end

  def sendmail_contact(contact)
    @contact = contact

    mail to: "tahkyu3@outlook.jp",
         subject: 'お問い合わせありがとうございました'
  end
  

end
