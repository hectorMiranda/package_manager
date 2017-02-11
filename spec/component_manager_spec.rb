require 'component_manager'

describe ComponentManager do
    before do
        # assume the execution of a given command
        # also could initialize the dependency table with some predefined values
    end

    describe 'add_dependency' do
        it 'Adds a component name and its dependencies to the depency table' do
            # expect(componentManager.dependencyTable).to include(@dependency)
            raise 'not implemented'
        end
    end

    describe 'install_component' do
        it 'Adds a component object to the installed_components hash' do
            # expect(componentManager.installed_components).to include(@component)
            raise 'not implemented'
        end
    end

    describe 'remove_component' do
        it 'Verifies that dependencies are not being used by other components and if so remove the component' do
            # expect(componentManager.installed_components).to not include(@dependency)
            raise 'not implemented'
        end
    end

    describe 'list_installed_components' do
        it 'Enumerate the content of the installed_components array' do
            # expect(componentManager.dependencyTable).to include(@dependency)
            raise 'not implemented'
        end
    end
end
