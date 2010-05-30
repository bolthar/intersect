
require 'rubygems'
require 'freightrain'

include Freightrain

Freightrain.toolkit = :gtk
Freightrain.app_path = File.dirname(__FILE__)
Freightrain.start(:main)