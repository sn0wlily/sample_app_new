class NotificationMailer < ActionMailer::Base
  default from: "tasksup.1b@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "課題の期限通知", #メールのタイトル
      to: @user.email #宛先
    ) do |format|
      format.text
    end
  end
end