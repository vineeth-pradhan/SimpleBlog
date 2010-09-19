class CreateTest1s < ActiveRecord::Migration
  def self.up
    create_table :test1s do |t|
      t.string :name
      t.integer :age
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :test1s
  end
end
