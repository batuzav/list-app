require "./list.rb"


class ListApp 
    attr_writer :list

    def initialize
        @list = List.new
    end

    def listen_user action
        puts "Qué articulo quieres #{action}?"
        response = gets.chomp
        return response
    end


    def run 
        puts "Bienvenido a nuestra lista de compras"

        loop do
            system "clear"
            puts "a - Agregar un articulo"
            puts "r - Remover un articulo"
            puts "v - Mostrar todos articulos"
            puts "m - Marcar un articulo"
            puts "b - borrar todos articulos"
            puts "s - Salir de la aplicación"
            imput = gets.chomp
            system "clear"

            case imput
            when 's'
                break
                puts "Gracias por usar nuesta aplicación"
            when 'a'
               item = listen_user "anadir"
               @list.add_item item

            when 'r'
                index = listen_user "eliminar"
                @list.remove_item index
            when 'v'
                @list.show_all
                gets.chomp
            when 'm'
                index = listen_user "marcar"
                @list.cheking_item index
            when 'b'
                @list.delete_all
            else
                puts "comando no existente :(, Enter para continuar"
                gets.chomp

            end

        end

    end
end


app = ListApp.new

app.run