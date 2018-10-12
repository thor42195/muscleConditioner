class DeleteTableTofavarites < ActiveRecord::Migration[5.1]
  def change
    drop_table :favarites
  end
end
