class CreateDecksUsersTable < ActiveRecord::Migration
  def change
    create_table :decks_users do |column|
      column.references :user, :deck
    end
  end
end
