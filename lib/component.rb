class Component
    attr_accessor :dependencies

    def initiliaze(name, dependencies = [])
        @name = name
        @dependencies = dependencies
    end

    def show_info
        puts "Name: #{@name}"

        @dependencies.each do |component_name|
            puts "#{component_name}"
        end
    end
end