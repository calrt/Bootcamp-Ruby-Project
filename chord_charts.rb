module ChordCharts
    def self.right_handed
        system "clear"
        puts Rainbow("                 Before we start:").indianred
        puts Rainbow("          Are you right or left handed?").indianred
        puts "         ===============================\n\n"
        puts Rainbow("                   [1] Right").indianred
        puts Rainbow("                   [2] Left").indianred 
        chords_which_hand = gets.chomp   
        case chords_which_hand
        when '1'
            true
        when '2'
            false
        else
            chords_which_hand = gets.chomp
            self.right_handed
        end
    end


    def self.to_left(hash)
        hash.each do |fret, string| 
            print "#{string.reverse.join(" ")}\n"    #Converts right handed fret board to left handed via .reverse
        end
    end


    def self.print_chords(chord, note)
        system "clear"
        puts "This is an open major #{note} chord.\n\n"
        if $right_handed             
            chord[0].each do |chord, fret|      #displays fret board (major chords) for right handed users
                puts Rainbow("#{fret.join(" ")}").yellow
            end
        else
            to_left(chord[0])         
        end
        puts "\nThis is an open minor #{note} chord.\n\n"
        if $right_handed
            chord[1].each do |chord, fret|     #displays fret board (minor chords) for right handed users
                puts Rainbow("#{fret.join(" ")}").yellow
            end
        else
            to_left(chord[1])
        end
    end

    def self.a_chord
        a = [{
            string_keys_major: ["E","A","D","G","B","e"],
            nut_maj: ["X", "-", "-", "-", "-", "-"],
            maj_fret_one: ["|", "|", "|", "|", "|", "|"],
            maj_fret_two: ["|", "|", "3", "2", "1", "|"],
            maj_fret_three: ["|", "|", "|", "|", "|", "|"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"],
        },
        {
            string_keys_minor: ["E","A","D","G","B","e"],
            nut_min: ["X", "-", "-", "-", "-", "-"],
            min_fret_one: ["|", "|", "|", "|", "1", "|"],
            min_fret_two: ["|", "|", "2", "3", "|", "|"],
            min_fret_three: ["|", "|", "|", "|", "|", "|"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"],
        }]

        self.print_chords(a, 'A')
        Menus::end_menu
    end

    def self.b_chord
        b = [{
            string_keys_major: ["E","A","D","G","B","e"],
            nut_maj: ["X", "-", "-", "-", "-", "-"],
            maj_fret_one: ["|", "1", "1", "1", "1", "1"],
            maj_fret_two: ["|", "|", "|", "|", "|", "|"],
            maj_fret_three: ["|", "|", "2", "3", "4", "|"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"],
        },
        {
            string_keys_minor: ["E","A","D","G","B","e"],
            nut_min: ["X", "-", "-", "-", "-", "-"],
            min_fret_one: ["|", "|", "|", "|", "|", "|"],
            min_fret_two: ["|", "1", "1", "1", "1", "1"],
            min_fret_three: ["|", "|", "|", "|", "2", "|"],
            min_fret_four: ["|", "|", "3", "4", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"],
        }]

        self.print_chords(b, 'B')
        Menus::end_menu
    end

    def self.c_chord 
        c = [{
            string_keys_major: ["E","A","D","G","B","E"],
            nut_maj: ["X", "-", "-", "-", "-", "-"],
            maj_fret_one: ["|", "|", "|", "|", "1", "|"],
            maj_fret_two: ["|", "|", "2", "|", "|", "|"],
            maj_fret_three: ["|", "3", "|", "|", "|", "|"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"],
        },
        {
            string_keys_minor: ["E","A","D","G","B","E"],
            nut_min: ["X", "-", "-", "-", "-", "X"],
            min_fret_one: ["|", "|", "1", "|", "2", "|"],
            min_fret_two: ["|", "|", "|", "|", "|", "|"],
            min_fret_three: ["|", "3", "|", "|", "|", "|"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"],
        }]

        self.print_chords(c, 'C')
        Menus::end_menu
    end

    def self.d_chord    
        d = [{
            string_keys_major:["E","A","D","G","B","E"],
            nut_maj: ["X", "X", "-", "-", "-", "-"],
            maj_fret_one:["|", "|", "|", "|", "|", "|"],
            maj_fret_two:["|", "|", "|", "1", "|", "2"],
            maj_fret_three:["|", "|", "|", "|", "3", "|"],
            maj_fret_four:["|", "|", "|", "|", "|", "|"],
            maj_fret_five:["|", "|", "|", "|", "|", "|"],
        },
        {
            string_keys_minor: ["E","A","D","G","B","E"],
            nut_min: ["X", "X", "-", "-", "-", "-"],
            min_fret_one: ["|", "|", "|", "|", "|", "1"],
            min_fret_two: ["|", "|", "|", "2", "|", "|"],
            min_fret_three: ["|", "|", "|", "|", "3", "|"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"],
        }]

        self.print_chords(d, 'D')
        Menus::end_menu
    end

    def self.e_chord
            
        e = [{
            string_keys_major: ["E","A","D","G","B","E"],
            nut_maj: ["-", "-", "-", "-", "-", "-"],
            maj_fret_one: ["|", "|", "|", "1", "|", "|"],
            maj_fret_two: ["|", "2", "3", "|", "|", "|"],
            maj_fret_three: ["|", "|", "|", "|", "|", "|"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"]
        },
        {
            string_keys_minor: ["E","A","D","G","B","E"],
            nut_min: ["-", "-", "-", "-", "-", "-"],
            min_fret_one: ["|", "|", "|", "|", "|", "|"],
            min_fret_two: ["|", "1", "2", "|", "|", "|"],
            min_fret_three: ["|", "|", "|", "|", "|", "|"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"]
        }]
    
        self.print_chords(e, 'E')
        Menus::end_menu
    end

    def self.f_chord
            
        f = [{
            string_keys_major: ["E","A","D","G","B","E"],
            nut_maj: ["-", "-", "-", "-", "-", "-"],
            maj_fret_one: ["1", "|", "|", "|", "1", "1"],
            maj_fret_two: ["|", "|", "|", "2", "|", "|"],
            maj_fret_three: ["|", "3", "4", "|", "|", "|"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"]
        },
        {
            string_keys_minor: ["E","A","D","G","B","E"],
            nut_min: ["X", "-", "-", "-", "-", "X"],
            min_fret_one: ["1", "|", "|", "1", "1", "1"],
            min_fret_two: ["|", "|", "|", "|", "|", "|"],
            min_fret_three: ["|", "3", "4", "|", "|", "|"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "|", "|", "|", "|", "|"]
        }]
    
        self.print_chords(f, 'F')
        Menus::end_menu
    end

    def self.g_chord
        
        g =[{
            string_keys_major: ["E","A","D","G","B","E"],
            nut_maj: ["-", "-", "-", "-", "-", "-"],
            maj_fret_one: ["|", "|", "|", "|", "|", "|"],
            maj_fret_two: ["|", "1", "|", "|", "|", "|"],
            maj_fret_three: ["2", "|", "|", "|", "3", "4"],
            maj_fret_four: ["|", "|", "|", "|", "|", "|"],
            maj_fret_five: ["|", "|", "|", "|", "|", "|"]
        },
        {
            string_keys_minor: ["E","A","D","G","B","E"],
            nut_min: ["-", "-", "-", "-", "-", "-"],
            min_fret_one: ["|", "|", "|", "|", "|", "|"],
            min_fret_two: ["|", "|", "|", "|", "|", "|"],
            min_fret_three: ["1", "|", "|", "1", "1", "1"],
            min_fret_four: ["|", "|", "|", "|", "|", "|"],
            min_fret_five: ["|", "2", "3", "|", "|", "|"]
        }]

        self.print_chords(g, 'G')
        Menus::end_menu
    end

end #Module End