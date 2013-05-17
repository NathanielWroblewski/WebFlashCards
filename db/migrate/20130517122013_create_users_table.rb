class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |column|
      column.string :name, :email, :password
      column.integer :games_played, :cards_correct, :cards_shown, :time_played
    end
  end
end
