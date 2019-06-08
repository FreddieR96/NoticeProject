class Changintype < ActiveRecord::Migration[5.2]
  def change
  change_table :reports do |t|
  t.rename :type, :zetype
  end
  end
end
