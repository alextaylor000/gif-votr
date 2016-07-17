class CreateRankingsView < ActiveRecord::Migration[5.0]
  def up
    execute <<-SQL
      CREATE VIEW rankings AS (
        WITH total_votes AS (
        SELECT gif_id, sum(value) AS SCORE
        FROM votes GROUP BY gif_id)

        SELECT total_votes.*,
        rank() OVER (ORDER BY total_votes.score DESC) AS rank
        FROM total_votes
      )
    SQL
  end

  def down
    execute("DROP VIEW rankings")
  end
end
