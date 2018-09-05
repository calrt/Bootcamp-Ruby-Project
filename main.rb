require 'rainbow'
require_relative "chord_charts"
require_relative "custom_chords"
# require_relative "song_chords"
require_relative "menus"

system "clear"

def main_menu
    Menus::print_main_menu
    mm_choice = gets.chomp
    case mm_choice
    when '1'
        $right_handed = ChordCharts::right_handed
        Menus::solo_chords_menu
    when '2'
        CustomChords::chord_generator
    when '3'
        system "clear"
    else
        main_menu
    end
end

main_menu