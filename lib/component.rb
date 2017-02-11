class Component
    attr_accessor :name, :dependencies

    def initiliaze(name, dependencies = [])
        @name = name
        @dependencies = dependencies
    end

    def show_info
        puts "Name: #{@name}"

        @dependencies.each do |component_name|
            puts component_name.to_s
        end
    end
end
