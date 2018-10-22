require('minitest/autorun')
require('minitest/rg')
require_relative('../sports')

class TestSports < MiniTest::Test

  def test_sports_team_init
    team = SportsTeam.new("Team Name",["Player 1", "Player 2"],"Mr Coach")
    assert_equal("Team Name", team.name)
    assert_equal(["Player 1", "Player 2"], team.players)
    assert_equal("Mr Coach", team.coach)
  end

  def test_sports_team_change_coach
    team = SportsTeam.new("Team Name",["Player 1", "Player 2"],"Mr Coach")
    team.coach = "Mrs Coach"
    assert_equal("Mrs Coach", team.coach)
  end

  def test_add_new_player
    team = SportsTeam.new("Team Name",["Player 1", "Player 2"],"Mr Coach")
    result = team.add_player("Player 3")
    assert_equal(["Player 1", "Player 2", "Player 3"], result)
  end

  def test_player_exists
    team = SportsTeam.new("Team Name",["Player 1", "Player 2"],"Mr Coach")
    result = team.player_exists("Player 2")
    assert_equal(true, result)
  end

  def test_team_won
    team = SportsTeam.new("Team Name",["Player 1", "Player 2"],"Mr Coach")
    team.win(true)
    assert_equal( 1 , team.points)
  end


end
