CC		=	clang
OBJS	=	cbmbasic.o runtime.o plugin.o console.o
CFLAGS	=	-fPIC -W -Wall -O3

all: cbmbasic

cbmbasic: $(OBJS)
	$(CC) ${CFLAGS} -static -o cbmbasic $(OBJS)
	ln -f cbmbasic BASIC

clean:
	rm -f $(OBJS) cbmbasic
