class CreateAirlineDemos < ActiveRecord::Migration[7.1]
  def change
    create_table :airline_demos do |t|
      t.string :name, null: false
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
