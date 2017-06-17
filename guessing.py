#Guessing Game

import random

randomNumber = random.randint(-100,100)
guess = -1
count = 0
allowedGuesses = 7

print ("Guess a number between 100 and 200.  You are allowed 7 guesses.")

while guess != randomNumber and count < allowedGuesses:

    count = count + 1
    countString = str(count)
    print ("Enter guess " + countString + ": ")
    guess = input()
    guess = int(guess)

    if guess > randomNumber:
        print ("high guess")
    if guess < randomNumber:
        print ("low guess")
    
if guess == randomNumber:
    print ("Correct!  That took " + countString + " guesses.")
else:
    print ("Sorry!  You are only allowed 7 guesses.")

print("Enter your name: ")
name = input()
name = str(name)

f = open("gameReport.txt", "w")
f.write(name + " - " + countString + " guesses\n")
f.close()





    
