class RenamePublicationToPublishedInBooks < ActiveRecord::Migration[7.2]
  def change
    rename_column :books, :publication, :published
  end
end
