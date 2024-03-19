class CreatePost < ActiveRecord::Migration[7.1]
  def change
  create_table :posts do |t|
  	t.text :content
  	t.text :author

  	t.timestamps
  end
end
end
