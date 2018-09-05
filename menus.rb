module Menus
    
    def self.print_main_menu
        5.times do puts "\n" 
        end
        puts Rainbow("       🔥  🎸  Welcome to Chord Acadamy 🎸  🔥").indianred.bright
        puts Rainbow("""
        
                               ,-.        _.---._
                              |  `\\.__.-''       `.
                               \\  _        _  ,.   \\
         ,+++=._________________)_||______|_|_||    |
        (_.ooo.===================||======|=|=||    |
           ~~'                 |  ~'      `~' o o   /
                                \\   /~`\\     o o   /
                                 `~'    `-.____.-' 
        
        """).yellow
        puts ""
        puts Rainbow("     Select from the options below:\n").indianred
        puts "     ========================================"
        puts Rainbow("
            [1] Revise solo chords
            [2] Right to Left Hand Chord Converter
            [3] Exit Chord Academy\n").indianred
        puts "     ========================================"
        
    end


    def self.solo_chords_menu
        system "clear"
        puts Rainbow("    
        Which chord would you like to practice?:").indianred
        puts "========================================"
        puts Rainbow("""             
                    [1] A chord
                    [2] B chord
                    [3] C chord
                    [4] D chord
                    [5] E chord
                    [6] F chord
                    [7] G chord""").indianred

        puts "\n      [8] Return to Main Menu"
        puts "========================================"
            
            chord_choice = gets.chomp.downcase

        case chord_choice
        when "1"
            ChordCharts.a_chord
        when "2"
            ChordCharts.b_chord
        when "3"
            ChordCharts.c_chord
        when "4"
            ChordCharts.d_chord
        when "5"
            ChordCharts.e_chord
        when "6"
            ChordCharts.f_chord
        when "7"
            ChordCharts.g_chord
        when "8"
            main_menu
        end
    end

    def self.end_menu_solo
        puts "\n========================================"
            puts "\n[1] Try another chord"
            puts "[2] Return to Main Menu"
            puts "[3] Exit Chord Academy"

            menu_choice = gets.chomp

            case menu_choice
            when '1'
                self.solo_chords_menu
            when '2'
                main_menu
            when '3'
                system "clear"
            end
    end

    def self.end_menu_custom
        puts "\n========================================"
            puts "\n[1] Try another"
            puts "[2] Return to Main Menu"
            puts "[3] Exit Chord Academy"

            menu_choice = gets.chomp

            case menu_choice
            when '1'
                CustomChords::chord_generator
            when '2'
                main_menu
            when '3'
                system "clear"
            end
    end
end