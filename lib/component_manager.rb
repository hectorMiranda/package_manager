class ComponentManager
    attr_accessor :run

    def initialize(run = true)
        @run = run
    end

    def prompt
        print '>'
        command = gets.split(' ')

        case command[0]
        when 'END'
            @run = false
        else
            puts 'Invalid command'
        end
    end
end
