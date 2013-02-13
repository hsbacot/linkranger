class AddLinkNameToLinks < ActiveRecord::Migration
  def change
    add_column :links, :linkname, :string
  end
end
