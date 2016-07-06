class DNA
  attr_reader :strand
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(comparing_strand)
    nucleotides = []
    comparing_nucleotides =[]
    nucleotides = strand.split('')
    comparing_nucleotides = comparing_strand.split('')
    result = 0
    nucleotides.each_with_index do |nucleotide, index|
      next if index + 1 > comparing_nucleotides.size
      result += 1 if nucleotide != comparing_nucleotides[index]
    end
    result
  end
end
