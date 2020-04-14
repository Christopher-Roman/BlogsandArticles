class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :created_by
      t.string :quote_text

      t.timestamps
    end
  end
end
