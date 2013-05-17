class CreateCardsTable < ActiveRecord::Migration
  def change
    create_table :cards do |column|
      column.string :question, :answer
      column.references :deck
    end
  end
end
