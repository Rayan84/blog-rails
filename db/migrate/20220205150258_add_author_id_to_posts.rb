class AddAuthorIdToPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :author, foreign_key: { to_table: :users }, index: true
    end
  end
end
