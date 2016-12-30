class CreateGetEtsies < ActiveRecord::Migration[5.0]
  def change
    create_table :get_etsies do |t|

      t.timestamps
    end
  end
end
