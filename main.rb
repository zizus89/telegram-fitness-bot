require 'telegram/bot'
# require 'sdbm'
require 'json'
# require 'pg'

require_relative 'programs'
include WorkoutProgram

require_relative 'starting_salutation'
include StartDesc

require_relative 'main_logic'
