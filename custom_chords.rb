module CustomChords
    def self.to_left(array)
        puts "\n\n        Left-Hand Version:"
        puts "        e B G D A E"
        array.each do |fret|
        print "        "
        print "#{fret.reverse.join(" ")}\n"
        end
    end

    def self.chord_generator
        system "clear"

        puts "            Right to Left Hand Chord Converter"
        puts "                    ===================="
        puts "        Right-Hand Version:"
        print "        E A D G B e\n"
        print "   Nut: "
        nut = gets.chomp.split(' ')
        print "Fret 1: "
        fret1 = gets.chomp.split(' ')
        print "Fret 2: "
        fret2 = gets.chomp.split(' ')
        print "Fret 3: "
        fret3 = gets.chomp.split(' ')
        print "Fret 4: "
        fret4 = gets.chomp.split(' ')
        print "Fret 5: "
        fret5 = gets.chomp.split(' ')

        right_hand_chord = [nut, fret1, fret2, fret3, fret4, fret5] #Join each fret array to be displayed

        self.to_left(right_hand_chord) #Converts and displays left handed version
        Menus::end_menu_custom
    end

end #end module