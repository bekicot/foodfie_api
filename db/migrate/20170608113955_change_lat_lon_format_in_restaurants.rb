class ChangeLatLonFormatInRestaurants < ActiveRecord::Migration
  def up
    change_column :restaurants, :longitude,:decimal, {:precision=>18, :scale=>13}
    change_column :restaurants, :latitude,:decimal, {:precision=>18, :scale=>13}
  end

  def down
    change_column :restaurants, :longitude, :float
    change_column :restaurants, :latitude, :float
  end
end


