require_relative 'character'
class Monster < Character
  attr_accessor :name, :hp, :offense, :defense

  def encounter
    puts "#{@name} があらわれた！"
  end

  def attack(brave)
    damage = @offense - brave.defense / 2
    puts "#{@name} の攻撃！"
    puts "#{brave.name} は #{damage} のダメージを受けた！"
    brave.hp -= damage
    brave.hp = 0 if brave.hp < 0
  end
end
