class RemoveContactFromBlogPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :blog_posts, :contact, :string
  end
end
