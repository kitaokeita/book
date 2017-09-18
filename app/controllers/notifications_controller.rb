class NotificationsController < ApplicationController
 def index
  @notifications = Notification.where(id: current_user.id).where(id:  notification.book.user.id)
 end 
   
 

 

  def create
    @notification = current_user.notifications.build(notification_params)
    
   if @notification.save
      redirect_to root_path, notice:"通知しました"
    else
       redirect_to new_book_path(@book), notice:"通知してない"
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:book_id)
  end  
end
 