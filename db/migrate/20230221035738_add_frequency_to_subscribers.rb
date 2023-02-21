class AddFrequencyToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_column :subscribers, :frequency, :string, default: 'Weekly'
  end
end
