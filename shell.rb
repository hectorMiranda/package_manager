#!/usr/bin/env ruby
require 'rubygems'
require_relative './lib/component'
require_relative './lib/component_manager'

if __FILE__ == $PROGRAM_NAME
    shell = ComponentManager.new
    begin
        shell.prompt
    end while shell.run
end
