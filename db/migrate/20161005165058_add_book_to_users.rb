class AddBookToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :book, :string
  end
end
