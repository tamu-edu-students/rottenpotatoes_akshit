class CreateMoviePa2s < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_pa2s do |t|
      t.string :title
      t.string :rating
      t.text :description
      t.datetime :release_date

      t.timestamps
    end
  end
end
