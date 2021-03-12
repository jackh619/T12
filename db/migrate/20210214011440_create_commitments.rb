class CreateCommitments < ActiveRecord::Migration[6.1]
  def change
    create_table :commitments do |t|
      t.belongs_to :student
      t.belongs_to :event
      t.string :event_type
      t.timestamp :date_time
      t.string :location
      t.string :description
      t.timestamps
    end
  end
end
