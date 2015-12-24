#Pseudocode
=begin
INPUT: Obtain a string
STEPS:
CREATE a html_entity hash
entities = {
    > => &lt;
    < => &gt;
    & => &amp;
    ¢ => &cent;
    £ => &pound;
    ¥ => &yen;
    € => &euro;
    © => &copy;
    ® => &reg;
}
Create a variable called character_array.
Split the string and store it in the character_array
FOR each char in the character array THEN
    check to see if the character is a key in the entitites hash
    IF true then replace the char with the entities[key]
    END IF
END FOR
join the character array together

OUTPUT: Return the string with it's html entity
=end
def convert(string)

    entities = {
        '>' => '&gt;',
        '<' => '&lt;',
        '&' => '&amp;',
        '¢' => '&cent;',
        '£' => '&pound;',
        '¥' => '&yen;',
        '€' => '&euro;',
        '©' => '&copy;',
        '®' => '&reg;',
        '"' => '&​quot;',
        "'" => '&​apos;'
      }

    character_array = string.split("")
    character_array.map! { |char| entities.has_key?(char) ? char = entities[char] : char }.join("")
end

p convert("Dolce & Gabbana") #should return Dolce &​amp; Gabbana.
p convert("Hamburgers < Pizza < Tacos") #should return Hamburgers &​lt; Pizza &​lt; Tacos.
p convert("Sixty > twelve") #should return Sixty &​gt; twelve.
p convert('Stuff in "quotation marks"') #should return Stuff in &​quot;quotation marks&​quot;.
p convert("Shindler's List") #should return Shindler&​apos;s List.
p convert("<>") #should return &​lt;&​gt;.
p convert("abc") #should return abc.