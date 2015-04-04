=begin

A Bigger Challenge: The Counting Game

Let's take on a more challenging logic problem. 
Remember the counting game that you pseudocoded during the Pseudocoding Assignment? For a recap:

10 friends are sitting in a circle around a table and decide to play a new game.
In it, they count up through the numbers from 1 to 100.
The first person says "1", the second says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions.
  So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
Whenever the number is divisible by 11, they skip the next person for the following number.
  For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).

Your job is to code a program which outputs each number and which person said it.
Use it to show that player 1 will say the number "100".

Tips:
  Remember to stick with brute force instead of trying to "figure out" the trick to the problem.
  Name your variables well!
  Ignore the skipping to start out with. Only add it when you're ready.
Advanced Option:
  Make your method take two inputs -- the number of players and the number you're counting up to.
  Then see who says the last number each time!

=end

puts "How many players?"
input_players = gets.to_i

puts "What number are we counting to?"
input_high_number = gets.to_i

def game(number_of_players, highest_number)
  active_player = 1
  current_number = 1
  count_forward = true
  skipping = false

  while current_number <= highest_number do
    puts "Player #{active_player} says: #{current_number}."
    
    if current_number % 7 == 0
      count_forward = !count_forward
    end

    if current_number % 11 == 0
      skipping = true
    else
      skipping = false
    end

    case 
      when count_forward && !skipping then active_player += 1
      when count_forward && skipping then active_player += 2
      when !count_forward && !skipping then active_player -=1
      else active_player -= 2
    end

    if active_player > number_of_players
      active_player = active_player - number_of_players
    elsif active_player < 1
      active_player = active_player + number_of_players        
    end

    current_number += 1
    
  end
end

game(input_players, input_high_number)