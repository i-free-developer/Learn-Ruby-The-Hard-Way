# Exercise 36 Designing and Debugging
=begin
  Every if-statement must have an else.
  If else never run, you must use a die function in the else that prints out an error message
  never nest if-statements more tha two deep and always try to do them one deep
  Treat if-statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.
  Your Boolen test should be simple. If not, move their calculations to variables earlier in your function and use a good name for the variables.
  Rules are to be break!
=end

# Rules for Loops
# Use a while-loop only t o loop forever, and that means probably never.
# Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over.

# tips for Degugging
# Do not use a "degubger".
# The best way to debug is to use put to print out the values of variables at points in the program to see where they go wrong.
# make sure parts of your programs work as you work on them. Code alittle, run a little, fix a little.

if_statement_tips = """Every if-statement must have an else.\n
  If else never run, you must use a die function in the else that prints out an error message.\n
  Never nest if-statements more tha two deep and always try to do them one deep.\n
  Treat if-statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.\n
  Your Boolen test should be simple. If not, move their calculations to variables earlier in your function and use a good name for the variables.\n
  Rules are to be break!"""

puts if_statement_tips

loop_tips = """Use a while-loop only t o loop forever, and that means probably never.\n
Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop over."""

puts loop_tips

debugging_tips = """Do not use a \"degubger\".\n
The best way to debug is to use put to print out the values of variables at points in the program to see where they go wrong.\n
Make sure parts of your programs work as you work on them. Code alittle, run a little, fix a little."""

puts debugging_tips


