class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title, null: false
      t.string :description
      t.integer :score, default: 1
      t.references :airline_demo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
