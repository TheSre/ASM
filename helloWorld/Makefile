default: hello.out
	./hello.out

hello.out: hello.o
	ld -o hello.out hello.o

hello.o: hello.s
	as -g -o hello.o hello.s

clean:
	rm *.o
	rm *.out
