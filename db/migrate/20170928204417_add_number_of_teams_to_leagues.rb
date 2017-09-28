class AddNumberOfTeamsToLeagues < ActiveRecord::Migration[5.1]
  def change
    add_column :leagues, :number_of_teams, :integer
  end
end
