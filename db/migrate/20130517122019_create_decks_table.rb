class CreateDecksTable < ActiveRecord::Migration
  def change
    create_table :decks do |column|
      column.string :name, :difficulty
      column.boolean :published
      column.integer :number_of_cards
    end
  end
end
