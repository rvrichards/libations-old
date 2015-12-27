class AddUserToDetail < ActiveRecord::Migration
  def change
    add_reference :details, :user, index: true, foreign_key: true
  end
end
