#Pseudcode
#INPUT: Obtain a binary string
#STEPS:
#CREATE a hash called binary_conversion
    #KEYS = letter
    #VALUES = binary equivilant
#CREATE a empty array called binary_array
#Split the binary_string and store it in the binary_array
#CREATE a empty ascii_array
#FOR each binary_value in the binary_array THEN
    #IF binary_array has a value of binary_value THEN
        #Find the associated key
        #Push the key into the ascii_array
    #END IF
#END FOR
#Capitialize and join the ascii_array
#OUTPUT: Should return it's ASCII equivlant
def binary_agent(binary_string)
      binary_array = binary_string.split(" ")
      ascii_array = []

    binary_conversion = {
        A: "01000001",
        B: "01000010",
        C: "01000011",
        D: "01000100",
        E: "01000101",
        F: "01000110",
        G: "01000111",
        H: "01001000",
        I: "01001001",
        J: "01001010",
        K: "01001011",
        L: "01001100",
        M: "01001101",
        N: "01001110",
        O: "01001111",
        P: "01010000",
        Q: "01010001",
        R: "01010010",
        S: "01010011",
        T: "01010100",
        U: "01010101",
        V: "01010110",
        W: "01010111",
        X: "01011000",
        Y: "01011001",
        Z: "01011010",
        a: "01100001",
        b: "01100010",
        c: "01100011",
        d: "01100100",
        e: "01100101",
        f: "01100110",
        g: "01100111",
        h: "01101000",
        i: "01101001",
        j: "01101010",
        k: "01101011",
        l: "01101100",
        m: "01101101",
        n: "01101110",
        o: "01101111",
        p: "01110000",
        q: "01110001",
        r: "01110010",
        s: "01110011",
        t: "01110100",
        u: "01110101",
        v: "01110110",
        w: "01110111",
        x: "01111000",
        y: "01111001",
        z: "01111010",
      " ": "00100000",
      "'": "00100111"
    }

    binary_array.each do |binary_value|
        ascii_array << binary_conversion.key(binary_value) if binary_conversion.has_value?(binary_value)
    end

    ascii_array.join("")
end

p binary_agent("01000001 01110010 01100101 01101110 00100111 01110100 00100000 01100010 01101111 01101110 01100110 01101001 01110010 01100101 01110011 00100000 01100110 01110101 01101110 00100001 00111111") #should return "Aren't bonfires fun!?"
p binary_agent("01001001 00100000 01101100 01101111 01110110 01100101 00100000 01000110 01110010 01100101 01100101 01000011 01101111 01100100 01100101 01000011 01100001 01101101 01110000 00100001") #should return "I love FreeCodeCamp!"