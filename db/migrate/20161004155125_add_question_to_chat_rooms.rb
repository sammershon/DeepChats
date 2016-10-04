class AddQuestionToChatRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :chat_rooms, :question, :string
  end
end
