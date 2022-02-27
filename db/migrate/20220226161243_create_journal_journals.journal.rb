# This migration comes from journal (originally 20220219181405)
class CreateJournalJournals < ActiveRecord::Migration[7.0]
  def change
    create_table :journals do |t|
      t.string :title, null: false
      t.date :date, null: false

      t.timestamps
    end

    add_reference :journals, :user, null: false, foreign_key: true
  end
end
