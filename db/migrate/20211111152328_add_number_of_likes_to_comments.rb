class AddNumberOfLikesToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :number_of_likes, :integer, default: 0
  end
end
