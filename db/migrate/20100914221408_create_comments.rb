class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :content, :null => false
      t.references :user, :null => false
      t.references :blog_post, :null => false

      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :comments
  end
end
