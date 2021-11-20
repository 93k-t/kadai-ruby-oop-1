class Team
  # インスタンス変数を外部からアクセスできるようにする
  attr_accessor :name, :win, :lose, :drow
  
  # 各インスタンス変数を初期化し引数を与える
  def initialize(name, win, lose, drow)
    self.name = name
    self.win = win
    self.lose = lose
    self.drow = drow
  end
  
  # 勝ち数 / (勝ち数 + 負け数) の答えを calc_win_rate に代入(戻り値)
  def calc_win_rate
    rate = self.win.to_f / (self.win.to_f + self.lose.to_f)
  end
  
  def show_team_result
    puts "#{self.name} の2020年の成績は #{self.win}勝 #{self.lose}敗 #{self.drow}分、 勝率は#{calc_win_rate} です。"
  end
end

# インスタンスの生成
# インスタンス名 = クラス名.new(引数)
Giants = Team.new("Giants", 67, 45, 8)
Tigers = Team.new("Tigers", 60, 53, 7)
Dragons = Team.new("Dragons", 60, 55, 5)
BayStars = Team.new("BayStars", 56, 58, 6)
Carp = Team.new("Carp", 52, 56, 12)
Swallows = Team.new("Swallows", 41, 69, 10)

# インスタンスの実行
Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
BayStars.show_team_result
Carp.show_team_result
Swallows.show_team_result
