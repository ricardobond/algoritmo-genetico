class Chromossome
  attr_accessor :bitstring, :fitness
  
  def initialize (length, bitstring=nil)
    @bitstring ||= rand(2**length+1).to_s(2).rjust(length, '0')
    fitness
  end
  
  def self.random_chromosomes(length, number)
    return Array.new(length) { Chromosome.new(length) }
  end
  
  def to_s
    @bitstring
  end
  
  def fitness_func(n)
    return n^0b1010
  end
  
end

crom = Chromossome.new(6, 3)
puts crom.inspect
