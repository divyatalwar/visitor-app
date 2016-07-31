class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.integer :event_type
      t.integer :ticket_id
      t.datetime :timestamp
      t.timestamps
    end
  end
end
