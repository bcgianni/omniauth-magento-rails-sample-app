class CreateMagentos < ActiveRecord::Migration[5.2]
  def change
    create_table :magentos do |t|

      t.timestamps
    end
  end
end
