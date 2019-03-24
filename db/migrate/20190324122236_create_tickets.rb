class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :Ticket_details
      t.string :owner
      t.timestamps
    end
  end
end
