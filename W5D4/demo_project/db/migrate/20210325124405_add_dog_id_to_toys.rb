class AddDogIdToToys < ActiveRecord::Migration[5.2]
  def change
    add_column(:toys, :dog_id, :integer, {null:false})
    add_column(:toys, :color, :string, {null: false})
        #SAMETHING AS TOP  ONE 
    #add_column:toys, :dog_id, :integer,null:false
  end
end