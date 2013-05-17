class CreateDecksTable < ActiveRecord::Migration
  def change
    create_table :decks do |column|
      column.string :name, :difficulty, :active
      column.integer :number_of_cards
    end
  end
end
