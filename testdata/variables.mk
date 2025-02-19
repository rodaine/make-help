# Not a doc comment
UNDOCUMENTED_A =1
# Not a doc comment
UNDOCUMENTED_B:=2
# Not a doc comment
UNDOCUMENTED_C?=3
# Not a doc comment
UNDOCUMENTED_D=

#: Recursive A
RECURSIVE_A = 1 $(RECURSIVE_B)
#: Recursive B
RECURSIVE_B=2 $(RECURSIVE_C)
#: Recursive C
RECURSIVE_C =3 $(RECURSIVE_D)
#: Recursive D
RECURSIVE_D= 4 $(RECURSIVE_E)
#: Recursive E
RECURSIVE_E	 = 	5 $(RECURSIVE_F)
#: Recursive F
 RECURSIVE_F = 6
#: Recursive G
RECURSIVE_G =
#: Recursive H
RECURSIVE_H=#comment

#: Simple A
SIMPLE_A := 1
#: Simple B
SIMPLE_B:=2 $(SIMPLE_A)
#: Simple C
SIMPLE_C :=3 $(SIMPLE_B)
#: Simple D
SIMPLE_D:= 4 $(SIMPLE_C)
#: Simple E
SIMPLE_E	:= 	5 $(SIMPLE_D)
#: Simple F
 SIMPLE_F := 6 $(SIMPLE_E)
#: Simple G
SIMPLE_G :=
#: Simple H
SIMPLE_H:=#comment

#: Override A
OVERRIDE_A ?= 1 $(OVERRIDE_B)
#: Override B
OVERRIDE_B?=2 $(OVERRIDE_C)
#: Override C
OVERRIDE_C ?=3 $(OVERRIDE_D)
#: Override D
OVERRIDE_D?= 4 $(OVERRIDE_E)
#: Override E
OVERRIDE_E	 ?= 	5 $(OVERRIDE_F)
#: Override F
 OVERRIDE_F ?= 6
#: Override G
OVERRIDE_G ?=
#: Override H
OVERRIDE_H?=#comment

#: Append A
APPEND += 1
#: Append B
APPEND+=2
#: Append C
APPEND +=3
#: Append D
APPEND+= 4
#: Append E
APPEND	 += 	5
#: Append F
 APPEND += 6
#: Append G
APPEND +=
#: Append H
APPEND+=#comment

#: First comment wins
FIRST=first
#: Other variable
SECOND=
#: This comment is ignored, but its value wins
FIRST=third
