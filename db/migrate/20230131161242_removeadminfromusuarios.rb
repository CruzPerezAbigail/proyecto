class Removeadminfromusuarios < ActiveRecord::Migration[7.0]
  def change
    remove_column :usuarios, :admin, :integer
  end
end
