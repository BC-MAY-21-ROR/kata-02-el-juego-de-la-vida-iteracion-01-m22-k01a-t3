class Game

    LIVE = "*"
    DEAD = "."
    puts "Elegir ancho del tablero"
    WIDTH = gets.chomp.to_i
    puts "Elegir alto del tablero"
    HEIGHT = gets.chomp.to_i
    
    #Funcion que define que estado de celula
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

    #Funcion que genera tablero con celulas muertas
    def empty_grid
        Array.new(HEIGHT){ Array.new(WIDTH) {DEAD} }
    end

    def print_grid
        # system "cls"

        rows = @grid.map do |row|
            row.join(" ")
        end

        print rows.join("\n")
    end

    def prueba 
        print_grid
        new_grid = empty_grid

        @grid.each_with_index do |row,row_index|
            row.each_with_index do |cell,cell_index|
                
                neighbors = find_neighbors(row_index,cell_index)

                if cell = LIVE
                    state = neighbors.size.between?(2,3)
                else
                    state = neighbors.size == 3
                end

                new_grid[row_index][cell_index] = state? LIVE : DEAD

            end

        end

        @grid = new_grid
        reinicio
    end



    
 
end

Game.new