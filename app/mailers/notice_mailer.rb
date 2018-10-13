class NoticeMailer < ApplicationMailer
  def notice_mail(blog,user)
     @blog = blog
     @blog.user_id = user
     mail to: "marathon555@hotmail.co.jp", subject: "ブログの確認メール"
  end
end
