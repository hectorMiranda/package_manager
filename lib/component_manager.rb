# installed_components holds a list of components objects, which eventually can support configuration values
# dependency_table holds a list of components and its dependencies, to install a component a dependency must be define first
class ComponentManager
    attr_accessor :run, :installed_components, :dependency_table

    def initialize(run = true, installed_components = {}, dependency_table = {})
        @run = run
        @installed_components = installed_components
        @dependency_table = dependency_table
    end

    def add_dependency(name, dependencies = [])
        @dependency_table.merge(name => dependencies)
    end

    def install_component(name)
        # first identify if we know the dependencies for this component
        if dependency_table.key?(name)
            # now install dependencies but abort if we dont have all required dependencies
            missing_components = []
            dependency_table[name].each do |component|
                unless are_dependencies_install_for_component?(component)
                    missing_components.push component
                end
            end

            if missing_components.count > 0
                missing_components.each do |_missing_component|
                    puts "#{misssing_component} is not installed."
                end
            end
        else
            puts 'Component dependencies must be defined first, use DEPEND'
          end
    end

    def are_dependencies_install_for_component?(name)
        # look in the dependency table and get the required dependency
        # if installed_component has all dependencies return true otherwise false
    end

    def remove_component(name)
        # grab all dependencies for this componentManager
        # foreach of the components installed verify if any of those uses a dependency
        # if not remove the component from installed_components
        # otherwise show dependencies used
    end

    def list_installed_components
        @installed_components.each do |installed_component|
            puts installed_component.to_s
        end
    end

    def list_dependency_table
        puts 'COMPONENT | DEPENDENCIES'
        @dependency_table.each do |component|
            print "#{component}:"
            component.each do |dependency|
                print "[#{dependency}]"
            end
        end
    end

    def prompt
        print '>'
        command = gets.split(' ')

        case command[0]
        when 'END'
            @run = false
        when 'DEPEND'
            add_dependency command[1], command[2, -1]
        when 'INSTALL'
            install_component command[1]
        when 'REMOVE'
            remove_component command[1]
        when 'LIST'
            list_installed_components
        when 'LIST_DEPENDENCY_TABLE'
            list_dependency_table
        else
            puts 'Invalid command'
        end
    end
end
