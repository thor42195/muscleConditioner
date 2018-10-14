class NoticeMailer < ApplicationMailer
  def notice_mail(blog)
     @blog = blog
     @user = @blog.user
     mail to: @user.email, subject: "ブログの確認メール"
  end
end
