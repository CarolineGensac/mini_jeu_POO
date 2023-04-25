require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Waluigi")
player2 = Player.new("Yoshi")
player3 = HumanPlayer.new("Caroline")


while player1.life_points > 0 && player2.life_points > 0
puts "==== Voici l'état de chaque joueur ===="
    [ player1, player2 ].each { |player| player.show_state }

        puts " ** FIGHT ! ** "

        player1.attacks(player2)
            if player2.life_points <= 0
                break
            else player2.attacks(player1)
        if player1.life_points <= 0 || player2.life_points <= 0
        break 
        end
    end
end

binding.pry