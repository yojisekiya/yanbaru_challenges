require_relative 'character'
class Brave < Character
  attr_accessor :name, :hp, :offense, :defense

  def attack(monster)
    damage = @offense - monster.defense / 2
    puts "#{@name} の攻撃！"
    puts "#{monster.name} に #{damage} のダメージを与えた！"
    monster.hp -= damage
    monster.hp = 0 if monster.hp < 0
  end
end
