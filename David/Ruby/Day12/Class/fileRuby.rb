file_example = File.open('Test.txt', 'w+')
file_example.truncate(0)
file_example.write('Line1')
file_example.close
file_example = File.open('Test.txt')
print file_example.read