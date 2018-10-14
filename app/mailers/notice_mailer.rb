class NoticeMailer < ApplicationMailer
  def notice_mail(blog)
     @blog = blog
     @email = current_user.email
     mail to: @email, subject: "ブログの確認メール"
  end
end
