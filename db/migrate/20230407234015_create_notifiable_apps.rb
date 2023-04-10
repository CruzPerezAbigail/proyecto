class CreateNotifiableApps < ActiveRecord::Migration[7.0]
  def change
    create_table :notifiable_apps do |t|
      t.string :name
      t.timestamps
    end
  end
end
