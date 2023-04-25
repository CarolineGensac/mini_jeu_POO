class Player
    attr_accessor :name, :life_points
        def initialize(name)
            @name = name
            @life_points = 10
        end

        def show_state
            puts "#{self.name} a #{self.life_points} point(s) de vie"
        end   
        
        def gets_damage(number)
            @life_points -= number #équivaut a @life_points = @life_points - number
            if @life_points <= 0
                puts "#{self.name} TU AS PERDU !!! ** GAME OVER LOSER **" 
            end
        end
        
        def attacks(other_player)
            puts "#{self.name} tape #{other_player.name}"
            damage = compute_damage
            puts "#{self.name} inflige #{damage} points de dégâts"
            other_player.gets_damage(damage)
        end

        def compute_damage
           return rand(1..6)
        end
end

class HumanPlayer < Player
    attr_accessor :weapon_level
    def initialize(name)
        super(name)
        @life_points = 100
        @weapon_level = 1
        
    end

    def show_state
        puts "#{self.name} a #{self.life_points} point(s) de vie, et une arme de niveau #{self.weapon_level}"
    end   

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        new_weapon = rand(1..6)
        puts "tu as trouvé une arme de niveau #{new_weapon}"
            if new_weapon > @weapon_level
                return @weapon_level = new_weapon
            elsif new_weapon <= @weapon_level
                return "Looser tu continues avec une arme de merde"
            end
        end

    def search_health_pack
        health_pack = rand(1..6)
            if health_pack == 1 
                return "tu n'as rien trouvé bouseux"
            elsif health_pack.between?(2, 5)
                @life_points += 50 
                return " Bravo tu as trouvé un pack de +50 points de vie ! "
            elsif health_pack == 6
                @life_points += 80 
                return " Bravo tu as trouvé un pack de +80 points de vie ! "
            end
    end         
end
