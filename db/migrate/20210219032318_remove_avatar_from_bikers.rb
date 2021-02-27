class RemoveAvatarFromBikers < ActiveRecord::Migration[6.0]
  def change
    remove_column :bikers, :avatar, :string
  end
end
