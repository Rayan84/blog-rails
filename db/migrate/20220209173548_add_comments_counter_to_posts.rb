class AddCommentsCounterToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :comment_counter, :string
    add_column :posts, :integer, :string
  end
end
