class NoticeMailer < ApplicationMailer
  def notice_mail(blog,user)
     @blog = blog
     @blog.user_id = user
     mail to: "user.email", subject: "ブログの確認メール"
  end
end
