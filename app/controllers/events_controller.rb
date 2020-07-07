class EventsController < ApplicationController
    
    
    def create
        event = Event.new(event_params)
        event.save!
        @events = Event.where(user_id: current_user.id)
    end

    def update
        event = Event.find(params[:id])
        @events = Event.where(user_id: current_user.id)
        event.update(event_params)
    end

    def destroy
        @user = User.find(params[:id])
        event = Event.find(params[:id])
        event.destroy
        redirect_to user_path(@user)
    end
    
    def event_post
        @event = Event.find_by(id: params[:id])
        @user = User.find_by(id: @post.user_id) #ユーザーのデータを取得する処理
    end
    
    def event_new
       @event = Event.new(
        content: params[:content],
        user_id: @current_user.id #ログインユーザーのidを取得して保存
        )
        #新規投稿保存後の処理 
    end

    private
    def event_params
        params.require(:event).permit(:title, :start, :end, :user_id, :body)
    end
end