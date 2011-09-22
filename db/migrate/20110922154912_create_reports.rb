class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :title
      t.text :excerpt
      t.integer :price

      t.timestamps
    end
  end
end
