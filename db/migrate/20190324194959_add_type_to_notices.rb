class AddTypeToNotices < ActiveRecord::Migration[5.2]
  def change
    add_column :notices, :type, :string
  end
end
