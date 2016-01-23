class AddSynopsisToBook < ActiveRecord::Migration
  def change
  	add_column :books, :synopsis, :text
  end
end
