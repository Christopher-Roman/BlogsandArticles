class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.string :created_by
      t.string :source_link
      t.string :opening_statement

      t.timestamps
    end
  end
end
