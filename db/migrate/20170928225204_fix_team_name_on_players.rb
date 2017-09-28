class FixTeamNameOnPlayers < ActiveRecord::Migration[5.1]
  def change
    rename_column :players, :team, :nfl_team
  end
end
