#
# Makefile for mod_examples
#
MODULE1=mod_example_1
MODULE_NAME1=example_1
MODULEA=mod_example_A
MODULE_NAMEA=example_A
MODULE2=mod_example_2
MODULE_NAME2=example_2
MODULE3=mod_example_3
MODULE_NAME3=example_3
MODULE4=mod_example4
MODULE_NAME4=example4
#
APXS=/usr/bin/apxs

all: $(MODULE1) $(MODULEA) $(MODULE2) $(MODULE3) $(MODULE4)

mod_example_1:
	$(APXS) -Wc,-g -c $@.c 

mod_example_A:
	$(APXS) -Wc,-g -c $@.c 

mod_example_2:
	$(APXS) -Wc,-g -c $@.c 

mod_example_3:
	$(APXS) -Wc,-g -c $@.c 

mod_example4:
	$(APXS) -Wc,-g -c $@.c 

install1: $(MODULE1) 
	$(APXS) -i -a -n $(MODULE_NAME1) $(MODULE1).la

installA: $(MODULEA) 
	$(APXS) -i -a -n $(MODULE_NAMEA) $(MODULEA).la

install2: $(MODULE2) 
	$(APXS) -i -a -n $(MODULE_NAME2) $(MODULE2).la

install3: $(MODULE3) 
	$(APXS) -i -a -n $(MODULE_NAME3) $(MODULE3).la

install4: $(MODULE4) 
	$(APXS) -i -a -n $(MODULE_NAME4) $(MODULE4).la

install: install1 installA install2 install3 install4

clean:
	rm -rf *.so *.o *.slo *.la *.lo .libs
