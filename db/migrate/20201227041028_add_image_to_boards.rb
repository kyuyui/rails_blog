class AddImageToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boarts, :image, :string
  end
end
