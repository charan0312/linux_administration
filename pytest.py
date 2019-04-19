#!/bin/python

from sys import argv


#binary = "binary"
#id(binary)
#do_not = "don't"

#x = "There are %d types of people." % 10
#y = "Those who know %s and those who %s" % (binary, do_not)

#print x
#print y


#print "I said: %r." % x
#print "I also said: '%s'." % y

#hilarious = False
#joke_evaluation = "Isn't that joke so funny?! %r"

#print joke_evaluation % hilarious

#w = "This is the left side of ..."
#e = "a string with a right side."

#print w + e 

#a = "C"
#b = "H"
#c = "A"
#d = "R"
#e = "A"
#f = "N"

#print a + b + c,
#print d + e + f

#formatter = "%r %r %r %r"

#print formatter % (1, 2, 3, 4)
#print formatter % ("a", "b", "c", "d")
#print formatter % (True, False, True, False)
#print formatter % (formatter, formatter, formatter, formatter)
#print formatter % (
#  "dasdadasdsa",
#  "asdasdsadasdasdsa",
#  "vbvcncnnfhjgfjf",
#  "dsadsadsadaadas"
#)

#print "How old are you?"
#age = raw_input()
#print "How tall are you?"
#height = raw_input()
#print "How much do you weigh?"
#weight = raw_input()

#print "So, you're %r old, %r tall and %r heavy." % (age, height, weight)

#p = raw_input("Which is your favourite football club?")
#q = raw_input("Who is number 10?")

#print "%r %r" % (p, q)

#script, first, second, third = argv
#print "The script is called:", script
#print "Your first variable is:", first
#print "Your second variable is:", second
#print "And the last one is:", third

#script, user_name = argv
#prompt = '> '

#print "Hi %s, I'm the %s script" % (user_name, script)
#print "Do you like me %s?" % user_name
#likes = raw_input(prompt)
#print  "What do you like %s?" % user_name
#lives = raw_input(prompt)

#print """dnasdbnaudonasiodnsaiudnausidsnaidnsadisadnasui %r %r """ % (likes, lives)

#script, filename = argv
#txt = open(filename)
#print "Here's your file %r:" % filename
#print txt.read()
#print "Enter the filename again:"
#file_again = raw_input("> ")
#txt_again = open(file_again)
#print txt_again.read()

#count = [1, 2, 3,"charan", 4]

#for a in count:
#  print "list item is %r" % a

#list2D = [[1,2], [3,4]]

#for b in list2D:
#  print "%r", % b

class MyStuff(object):
	def __init__(self):
		self.tangerine = "And now a thousand years between"
	def apple(self):
		print "I am classy apples"

thing = MyStuff()
thing.apple()
print thing.tangerine
	
















