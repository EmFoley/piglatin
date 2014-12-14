class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
    	t.string :pig_latin
    	t.string :english
    	t.string :key
    	t.timestamps
    end
  end
end
