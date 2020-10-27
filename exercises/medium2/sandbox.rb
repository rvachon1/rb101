text = File.read('story.txt')
text2 = File.open('story.txt')

sentences = text.split(/\.|\?|\!/)
