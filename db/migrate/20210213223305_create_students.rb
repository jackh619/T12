class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|

      # Default id used to identify students rather than UIN
      t.boolean :is_admin
      t.string :first_name
      t.string :last_name
      t.integer :class_year
      t.string :email
      t.string :phone
      t.integer :num_fball
      t.integer :num_bball
      t.integer :num_other
      t.string :google_token
      t.string :google_refresh_token

      t.timestamps
    end
  end
end
