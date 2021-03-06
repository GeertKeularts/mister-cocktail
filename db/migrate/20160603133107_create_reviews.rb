class CreateReviews < ActiveRecord::Migration
  def change

    drop_table :reviews

    create_table :reviews do |t|
      t.text :description
      t.integer :rating
      t.references :cocktail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
