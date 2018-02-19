# AOR Framework Makefile for Kata
# 2018-02-19 21:33:14
PROJECT=kata-harness.gpr

ENV=-XLIBRARY_TYPE=relocatable -XAWS_BUILD=relocatable -XAOR_BUILD=shared -XXMLADA_BUILD=relocatable -XODBC_COMPONENT_BUILD=shared
BUILDER=gprbuild
CLEANER=gprclean

build:
	$(BUILDER) -P $(PROJECT) $(ENV)

clean:
	$(CLEANER) -P $(PROJECT) $(ENV)

run: build
	cd binaries ; ./kata_harness

add-test_foundation:
	FILES=$$(morpheus -a -l -P $(PROJECT) -c aunit -o job=add,kind=test_foundation,name=$(NAME),parent_unit_name=$(PARENT_UNIT_NAME),parent_class_unit_name=$(PARENT_CLASS_UNIT_NAME),parent_class_name=$(PARENT_CLASS_NAME),src_path=aunit,dst_path=. -u null $(IN)) &&\
	make asis FILES="$$FILES" &&\
	morpheus -a -P $(PROJECT) -c aunit -o job=add,kind=test_foundation,name=$(NAME),parent_unit_name=$(PARENT_UNIT_NAME),parent_class_unit_name=$(PARENT_CLASS_UNIT_NAME),parent_class_name=$(PARENT_CLASS_NAME),src_path=aunit,dst_path=. -u null

add-test_case:
	make asis FILES="$(IN)"
	FILES=$$(morpheus -a -l -P $(PROJECT) -c aunit -o name=$(NAME),parent_unit_name=$(PARENT_UNIT_NAME),parent_class_unit_name=$(PARENT_CLASS_UNIT_NAME),parent_class_name=$(PARENT_CLASS_NAME),src_path=aunit/,job=add,kind=test_case -u null $(IN)) &&\
	make asis FILES="$$FILES" &&\
	morpheus -a -P $(PROJECT) -c aunit -o name=$(NAME),parent_unit_name=$(PARENT_UNIT_NAME),parent_class_unit_name=$(PARENT_CLASS_UNIT_NAME),parent_class_name=$(PARENT_CLASS_NAME),src_path=aunit/,job=add,kind=test_case -u null $(IN) $$FILES

add-test_routine:
	make asis FILES="$(IN)"
	FILES=$$(morpheus -a -l -P $(PROJECT) -c aunit -o name=$(NAME),class_name=$(CLASS_NAME),src_path=aunit/,job=add,kind=test_routine -u $(IN)) &&\
	make asis FILES="$$FILES" &&\
	morpheus -a -P $(PROJECT) -c aunit -o name=$(NAME),class_name=$(CLASS_NAME),src_path=aunit/,job=add,kind=test_routine -u $(IN) $$FILES

asis:
	$(if ifneq  "$(FILES)" "", $(BUILDER) -u $(FILES) -f -P $(PROJECT) $(ENV) -cargs -gnatct)

