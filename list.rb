require "./item.rb"

class List 
    attr_writer :items

    def initialize
        @items = Array.new
    end

    def add_item(text)
        item = Item.new(text)
        @items.push(item)
    end

    def remove_item(index)
        @items.delete_at(index.to_i)
    end

    def cheking_item(index)
        @items[index.to_i].check_item
    end

    def delete_all
        @items.clear
    end

    def show_all
        if @items.length == 0
            puts "No hay aticulos en la lista"
        else
            @items.each_index do |index|
                puts index.to_s + @items[index].to_s
            end
            puts "Preciona Enter para continuar :)"
        end
    end

end


