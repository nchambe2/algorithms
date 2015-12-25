#Pseudocode
=begin
INPUT: Obtain a string of missing dna pairs
STEPS:
CREATE a base pairs hash
base_pairs = {
  "G" => "CG",
  "C" => "GC",
  "A" => "TA",
  "T" => "AT"
}
CREATE a empty array called dna_pairs
CREATE an array called dna_segements
SPLIT the string and store it in dna_segements
FOR each piece_of_dna in the dna_segements THEN
    Check to see if the piece_of_dna == a key in the base_pairs
      IF true THEN
          add the base_pairs[piece_of_dna]
      END IF
END FOR

Create pairs of data in the dna_pairs

OUTPUT: Return a 2d array with the complete dna pairs
=end
def pair(string)

    dna_segements = string.split("")
    base_pairs = {
        "G" => "C",
        "C" => "G",
        "A" => "T",
        "T" => "A"
     }

     dna_pairs = []
     dna_segements.select do |piece_of_dna|
        if base_pairs.has_key?(piece_of_dna)
            dna_pairs.push(piece_of_dna)
            dna_pairs.push(base_pairs[piece_of_dna])
        end
     end
     p dna_pairs.each_slice(2).to_a
end

p pair("GCG") #should return [["G","C"],["C","G"],["G","C"]]
p pair("ATCGA") #should return [["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]
p pair("TTGAG") #should return [["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]
p pair("CTCTA") #should return [["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]