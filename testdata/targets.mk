# Not a doc comment
undocumented_A:
# Not a doc comment
undocumented_B : undocumented_A
# Not a doc comment
undocumented_C: %_C : undocumented_B

#: Compile the entire program
all:

#: Install the executables
install :
#: Uninstall the executables
uninstall: undocumented_A
#: This should be ignored as install is defined above
install:

#: Multi targets are ignored
foo.bar baz.quux:

#: Variable targets (which may be multiple targets)
$(APPEND):

#: Double-colon A
double_colon_A::
#: Double-colon B
double_colon_B ::
#: Double-colon C
double_colon_C: %_C :
#: Double-colon D
double_colon_D : %_D: undocumented_A