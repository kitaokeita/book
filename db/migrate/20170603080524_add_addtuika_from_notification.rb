class AddAddtuikaFromNotification < ActiveRecord::Migration[5.0]
  def change
    add_reference :notifications, :user, foreign_key: true
    add_reference :notifications, :book, foreign_key: true
    add_reference :notifications, :reservation, foreign_key: true
  end
end
