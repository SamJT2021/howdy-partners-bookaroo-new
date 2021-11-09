class SetDefaultLikesToPostsAsZero < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :number_of_likes, :integer, default: 0
  end
end
