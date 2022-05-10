class Game

    LIVE = "*"
    DEAD = "."
    puts "Elegir ancho del tablero"
    WIDTH = gets.chomp.to_i
    puts "Elegir alto del tablero"
    HEIGHT = gets.chomp.to_i
    
    def init
        #Nuevo grid vacío 
        @grid = empty_grid

        @grid.each do |row|
            row.map! do |cell|
                if rand(5) == 1
                    LIVE #celula viva
                else
                    DEAD #celula muerta
                end    
            end    
        end
        
    end    


end