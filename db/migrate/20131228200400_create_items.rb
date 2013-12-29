class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :price
      t.string :firm
      t.string :model_name
      t.string :color
      t.text :description

      t.timestamps
    end
  end
end
