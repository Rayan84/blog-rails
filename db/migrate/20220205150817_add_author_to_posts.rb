class AddAuthorToPosts < ActiveRecord::Migration[7.0]
  # def change
  #   create_table :posts do |t|
  #     t.references :author, foreign_key: { to_table: :users }, index: true
  #   end
  # end
  def change
    #add_reference :posts, :user, null: false, foreign_key: true
    add_reference :posts, :author, foreign_key: { to_table: :users}, index: true
  end
end
