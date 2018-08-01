class Towers_of_hanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def make_move(from_tower, to_tower)
    # piece = @towers[from_tower].pop

    if valid_move?(from_tower, to_tower)
      @towers[to_tower].push(@towers[from_tower].pop)
    end

  end

  def valid_move?(from_tower, to_tower)
    if @towers[from_tower].empty?
      raise ArgumentError
    end
    if @towers[to_tower].empty?
      return true
    end
    if @towers[from_tower].last > @towers[to_tower].last
      raise ArgumentError
    else
      true
    end
  end

  def won?
    @towers[0].empty? && @towers[2].empty? || @towers[0].empty? && @towers[1].empty?
  end

  def play
    until won?
      begin
        render
        puts 'which tower to take from'
        from_tower = gets.chomp.to_i
        puts 'which tower to move to'
        to_tower = gets.chomp.to_i
        make_move(from_tower, to_tower)

      rescue
        puts 'invalid input, try again'
        retry
      end
    end
    render
    puts "You win!"
  end

  def render
    puts "Tower 0 #{@towers[0]}"
    puts "Tower 1 #{@towers[1]}"
    puts "Tower 2 #{@towers[2]}"
  end

end

game = Towers_of_hanoi.new
game.play
