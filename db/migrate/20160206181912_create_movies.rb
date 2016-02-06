class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.datetime :release_date
      t.belongs_to :director
      t.timestamps null: false
    end
  end
end
