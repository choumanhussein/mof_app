class CreateNearestStations < ActiveRecord::Migration[6.0]
  def change
      create_table :nearest_stations do |t|
     t.string :route
     t.string :station
     t.string :time
     t.references :property, foreign_key: true
      t.timestamps
    end
  end
end
