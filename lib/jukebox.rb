songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_index {|i| puts "#{i+1}. #{songs[i]}"}
  
  #i = 0
  #while songs[i] <= songs.length 
  #  puts "#{i+1}. #{songs[i]}"
  #  i += 1
  #end
  
end

def play (songs)
  puts "Please enter a song name or number:"
  song_name_or_number = gets.chomp
  if song_name_or_number.to_i.to_s == song_name_or_number
    if song_name_or_number.to_i <= songs.length
      correct_number = song_name_or_number.to_i - 1
      #binding.pry
      puts "Playing #{songs[correct_number]}"
    else
      puts "Invalid input, please try again"
    end
  elsif 
    songs.each do |i|
      if i == song_name_or_number
        puts "Playing #{i}"
        #break
      end
    end
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(song_array)
  help
  command = "test"
  while command != "exit" 
  
  puts "Please enter a command:"
  command = gets.chomp 
  
    if command == "help"
      help
    elsif command == "list"
      list (song_array)
    elsif command == "play"
      play (song_array)
    elsif command == "exit"
      exit_jukebox
    end
  end
end
  
  