class CreateShifts < ActiveRecord::Migration[7.0]
  def change
    create_table :shifts do |t|
      t.string :user_id
      t.datetime :start_date
      t.datetime :finish_date
      t.integer :break_length

      t.timestamps
    end
  end
end
