class AddReadToNotices < ActiveRecord::Migration[7.0]
  def change
    add_column :notices, :read, :boolean
  end
end
