class CreateSubscribers < ActiveRecord::Migration[5.2]
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :last_name
      t.text :email
      t.text :subscription
      t.timestamps
    end
  end
end