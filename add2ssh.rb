#!/usr/bin/env ruby
#	Created by Bombura
#	Version: 0.0.1
#	Usage: insert values into ssh config file manually
#	enter values when asked by scrit

subor = `echo $HOME`
sub = subor.chomp
conf = sub + '/.ssh/config.test'
#check or create config file
if File.exists?  conf then
	puts "ssh config.test file exist"
else
	File.open(conf, 'w')
	puts "new config.test file created"
end
print "Insert Hostname and short name: "
h = gets.chomp
print "Insert IP address: "
n = gets.chomp
print "Insert Username: "
u = gets.chomp
print "Insert Port Number: "
p = gets.chomp
open(conf, "a") { |f|
f << "Host " + h + "\n"
f << "Hostname " + n + "\n"
f << "User " + u + "\n"
f << "Port " + p + "\n"
f.close
}














#   Host    emea001-vyos    sai-vyos
#   Hostname    10.113.45.234
#   User        mzilka
#   Port        2222

