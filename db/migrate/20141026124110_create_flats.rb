class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :unique_id
      t.string :title
      t.string :flat_size
      t.text :description
      t.text :description_longer
      t.string :location_address
      t.string :price
      t.string :poplatky
      t.string :image_url
      t.string :detail_url
      t.string :podlazi
      t.datetime :first_seen_at
      t.datetime :updated_at
      t.datetime :available_from
      t.boolean :balcony
      t.boolean :terrace
      t.string :area_m
      t.boolean :elevator
      t.boolean :furnished
      t.boolean :marked_as_crap_user1
      t.boolean :marked_as_crap_user2

      t.timestamps
    end
  end
end
