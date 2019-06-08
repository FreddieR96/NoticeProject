class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.integer :notice_id
      t.integer :admin_id
      t.string :type
      t.boolean :reported

      t.timestamps
    end
  end
end
