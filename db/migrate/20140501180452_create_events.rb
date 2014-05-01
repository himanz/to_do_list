class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :item

      t.timestamps
    end
  end
end
