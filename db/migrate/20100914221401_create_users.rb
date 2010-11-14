class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :limit => 100, :null => false
      t.string :password, :limit => 100, :null => false
      t.string :first_name, :limit => 100
      t.string :last_name, :limit => 100
      t.string :email, :null => false
      t.references :comment
      t.references :author
      t.references :editor
      t.boolean :is_admin, :null => false, :default => false
      t.integer :resource_id
      t.string :resource_type

      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :users
  end
end
