class CreateTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :fees
      t.string :unique_identifier
      t.integer :event_id
    end
  end
end
