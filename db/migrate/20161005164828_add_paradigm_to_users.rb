class AddParadigmToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :paradigm, :string
  end
end
