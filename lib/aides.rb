class PersonnageRPG
    attr_accessor :nom, :points_de_vie, :force, :defense
  
    def initialize(nom, points_de_vie, force, defense)
      @nom = nom
      @points_de_vie = points_de_vie
      @force = force
      @defense = defense
    end
  
    def afficher_stats
      puts "Nom du personnage : #{self.nom}"
      puts "Points de vie : #{self.points_de_vie}"
      puts "Force : #{self.force}"
      puts "Défense : #{self.defense}"
    end
  end
  
  personnage = PersonnageRPG.new("Jean", 100, 20, 15)
  personnage.afficher_stats

  #---------------------------------------------------

  class PersonnageRPG
    attr_accessor :nom, :points_de_vie, :force, :defense
  
    def initialize(nom, points_de_vie, force, defense)
      @nom = nom
      @points_de_vie = points_de_vie
      @force = force
      @defense = defense
    end
  
    def afficher_stats
      puts "Nom du personnage : #{@nom}"
      puts "Points de vie : #{@points_de_vie}"
      puts "Force : #{@force}"
      puts "Défense : #{@defense}"
    end
  end
  
  personnage = PersonnageRPG.new("Jean", 100, 20, 15)
  personnage.afficher_stats