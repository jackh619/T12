class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|

      # Default id used to identify events
      t.string :event_name
      t.string :event_type
      t.timestamp :date_time
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
