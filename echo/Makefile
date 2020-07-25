file=$(shell basename -s ".s" `ls *.s`)

default: $(file).out
	./$(file).out

$(file).out: $(file).o
	ld -o $(file).out $(file).o

$(file).o: $(file).s
	as -g -o $(file).o $(file).s

clean:
	rm *.o
	rm *.out
