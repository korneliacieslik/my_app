class AddTimestampsToOpinions < ActiveRecord::Migration[6.0]
  
  def change
    
    add_timestamps :opinions, null: false, defeault: -> { 'NOW()' }

  end

end
