class CreateDegrees < ActiveRecord::Migration[6.1]
  def change
    create_table :degrees do |t|
      t.string :major 
      t.string :department 
      t.timestamps
    end
  end
end
