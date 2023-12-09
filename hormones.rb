define :invert_chord_1 do | some_chord |
    return some_chord[1..2] + [some_chord[0] + 12]
end

# intro to serotonin sequence, play with dmaj chord
define :serotonin_start do
    play :Cs5
    sleep 1
    play :D5
    sleep 1
end

# play with dmaj and bmin chords
define :serotonin_melody do
    sleep 0.5
    play :Cs5
    sleep 0.5
    play :D5
    sleep 1
    play :B4
    sleep 0.5
    play :A4
    sleep 0.5
    play :G4
    sleep 1
end

# play with fmaj chord
define :dopamine_melody do
    play :A4
    sleep 0.5
    play :F4
    sleep 1
    play :Gs4
    sleep 0.5
    play :G4
    sleep 1
end

define :rand_serotonin do | amp_param, sleep_param |
    play [:D5, :Cs5, :B4, :A4, :A3, :G3].choose, amp: amp_param, release: 1, cutoff: rrand(60, 120)
    sleep sleep_param
end

define :rand_dopamine do | amp_param, sleep_param |
    play [:A4, :F4, :Gs4, :G4].choose, amp: amp_param, release: 1, cutoff: rrand(60, 120)
    sleep sleep_param
end

define :rand_melatonin do | amp_param, sleep_param |
    play [:D, :C, :A, :Ds, :B, :F, :G].choose, amp: amp_param, release: 1, cutoff: rrand(60, 120)
    sleep sleep_param
end

define :play_inversion_sequence do | some_chord |
    key = some_chord
    key_invert1 = invert_chord_1(key)
    key_invert2 = invert_chord_1(key_invert1)
    play key, release: 1
    sleep 1
    play key_invert1, release: 1
    sleep 0.5
    play key_invert2, release: 1
    sleep 0.5
end

# play at the beginning, then comment out 
play_pattern_timed (scale :c3, :major_pentatonic, num_octaves: 2), 0.125, 
    release: 0.1
play_pattern_timed (scale :c4, :major_pentatonic, num_octaves: 4), 0.125,
    release: 0.1

# play at the beginning, then comment out 
live_loop :maj_to_maj7_to_maj do
    play chord(:C, :major), release: 2
    sleep 2
    play chord(:C, :major7), release: 2
    sleep 2
    play [:C4, :E4, :G4, :A4], release: 2
    sleep 2
    play chord(:C, :major), release: 2
    sleep 2
end

in_thread do
    live_loop :notes_in_chords do
        sleep 8 # for syncing, comment out later
        # play :C4
        # sleep 1.5
        # play :E4
        # sleep 0.5 # switch from 1.5 to 0.5
        # play :G4
        # sleep 1
        
        # add in later!
        # play :E4
        # sleep 1
        
        # play :B4
        # sleep 2 # switch from 2 to 1
        
        # add this in after a few rounds!
        # play :C5
        # sleep 0.5
        #play :B4#, release: 1
        #sleep 0.5
        
        # play :A4, release: 2
        # sleep 2
    end
end

in_thread do
    live_loop :hormone do
        sleep 1 # for syncing, comment out later
        
        # uncomment each line in order
        # serotonin_start
        # serotonin_melody
        # dopamine_melody
        # rand_serotonin(1, 0.25)
        # rand_serotonin(0.5, 0.75)
        # rand_melatonin(0.5, 0.25)
        # rand_melatonin(0.8, 0.25)
    end
end

in_thread do
    live_loop :chord_prog do
        sleep 1 # for syncing, comment out later

        # random chord progression, fmaj with random progressions
        # play chord(:d, :major), release: 2, amp: 0.5
        # sleep 2
        
        # inversion chord progressions
        # play_inversion_sequence(chord(:d, :major7))
        # play_inversion_sequence(chord(:d, :major))
        # play_inversion_sequence(chord(:b, :minor))
    end
end

in_thread do
    live_loop :drumming do
        sleep 1 # for syncing, comment out later

        # change amplitude throughout song 
        # sample :drum_cymbal_open, amp: 0.125, attack: 1, release: 4 
        # sleep 1
    end
end

