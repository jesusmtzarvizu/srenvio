class CreatePackages < ActiveRecord::Migration[6.0]
  def up  
    create_table:packages do |t|
        t.string "tracking_number", :limit => 50  
        t.string "carrier", :limit => 30  
        t.string "length", :limit => 10
        t.string "width", :limit => 10
        t.string "height", :limit => 10
        t.string "distance_unit", :limit => 10
        t.string "mass_unit", :limit => 10
        t.string "source_info", :limit => 10
        t.timestamps  
     end 
   end

   def down  
    drop_table:packages  
    end  
end  