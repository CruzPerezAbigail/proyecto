class AddIpAndUserToVersions < ActiveRecord::Migration[7.0]
  def change
    add_column :versions, :ip, :string
    add_column :versions, :usuario, :string
  end
end
