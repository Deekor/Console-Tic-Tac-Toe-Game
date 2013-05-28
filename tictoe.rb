
def drawBoard(rows)
	
	if rows == nil
		border = "+---+---+---+"
		topRow = "|   |   |   |"
		midRow = "|   |   |   |"
		botRow = "|   |   |   |"
		puts border
		puts topRow
		puts border
		puts midRow
		puts border
		puts botRow
		puts border
		return
	end

	border = "+---+---+---+"
	topRow = rows["top"]
	midRow = rows["mid"]
	botRow = rows["bot"]


	#Draw the final board
	puts border
	puts topRow
	puts border
	puts midRow
	puts border
	puts botRow
	puts border	
end

def playGame
	moves = 0
	pos = ""
	digit = ""
	topRow = "|   |   |   |"
	midRow = "|   |   |   |"
	botRow = "|   |   |   |"
	
	while true
		if (moves % 2) == 0
			puts "Player 1 pos: "
			moves = moves + 1
			pos = gets
			digit = "X"
		else
			puts "Player 2 pos: "
			moves = moves + 1
			pos = gets
			digit = "O"
		end
	#Top Row
	if pos == "TL\n"
		topRow[2] = digit	
	end
	if pos == "TM\n"
		topRow[6] = digit	
	end
	if pos == "TR\n"
		topRow[10] = digit	
	end

	#Mid Row
	if pos == "ML\n"
		midRow[2] = digit	
	end
	if pos == "MM\n"
		midRow[6] = digit	
	end
	if pos == "MR\n"
		midRow[10] = digit	
	end

	#Bot Row
	if pos == "BL\n"
		botRow[2] = digit	
	end
	if pos == "BM\n"
		botRow[6] = digit	
	end
	if pos == "BR\n"
		botRow[10] = digit	
	end
	
	rows = Hash["top", topRow, "bot", botRow, "mid", midRow]
	
	drawBoard(rows)
	
	if moves == 9
		puts "TIE GAME!"
		break
	end
	
	
	end
end





puts
puts "Tic Tac Toe V0.1"
puts
puts "Press <ENTER> to play"
gets
drawBoard(nil)
puts "This is the game board. On your move type 'TL' to place an X or O in the top left. \nLikewise for middle right place MR, for bottom middle put BM"
puts 
playGame





