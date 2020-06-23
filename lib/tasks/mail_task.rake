namespace :mail_task do
  desc "課題の締め切りと今日の日付を比較して・日前ならメールを送信する"
  task :mailer => :environment do
    #puts "Hello"
    kadais = Kadai.all

    kadais.each do |kadai|
      require 'date'#現在の日時
      a = kadai.imp*(10-kadai.sinko)/10 #優先度
      #優先度から何日前に送るか計算
      if a > 2 
        b = kadai.due - 3
      elsif a > 1 
        b = kadai.due - 2
      else 
        b = kadai.due - 1
      end
      
      if Date.today >= b then #比較
        NotificationMailer.send_confirm_to_user(User.find(kadai.user_id)).deliver #メール送信
      end
    end
  end
end
