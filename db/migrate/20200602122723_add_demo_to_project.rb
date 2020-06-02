class AddDemoToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :demo, :string
  end
end
