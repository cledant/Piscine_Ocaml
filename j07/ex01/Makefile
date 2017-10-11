NAME = run
SOURCES = 	people.ml \
			doctor.ml \
			main.ml

OBJS = $(SOURCES:.ml=.cmo)
OPTOBJS = $(SOURCES:.ml=.cmx)

CAMLC = ~/.brew/bin/ocamlc
CAMLOPT = ~/.brew/bin/ocamlopt
CAMLDEP = ~/.brew/bin/ocamldep

LIBS=
WITHGRAPHICS = graphics.cma -cclib -lGraphics

PHONY = opt byt all clean fclean re

all: .depend $(NAME)

$(NAME): opt byt
	rm -f $(NAME)
	ln -s $(NAME).byt $(NAME)

opt: $(NAME).opt
byt: $(NAME).byt

$(NAME).byt: $(OBJS)
	$(CAMLC) -o $(NAME).byt $(LIBS) $(OBJS)

$(NAME).opt: $(OPTOBJS)
	$(CAMLOPT) -o $(NAME).opt $(LIBS:.cma=.cmxa) $(OPTOBJS)

%.cmo : %.ml
	$(CAMLC) -c $<

%.cmi : %.mli
	$(CAMLC) -c $<

%.cmx : %.ml
	$(CAMLOPT) -c $<

clean:
	rm -f *.cm[oix] *~ .*~
	rm -f $(SOURCES:.ml=.o)

fclean: clean
	rm -rf .depend
	rm -f $(NAME)
	rm -f $(NAME).byt
	rm -f $(NAME).opt

.depend:
	rm -rf .depend
	touch .depend
	$(CAMLDEP) $(SOURCES) > .depend

re: fclean all
