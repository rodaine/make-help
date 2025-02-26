.PHONY: help
#: This list of useful make variables & targets
help: help_variables help_targets

.PHONY: help_variables
help_variables: $(eval ECHO=$(shell \
	sed -nrE \
		-e 'N;s/^#:[ 	]*(.+)\n[ 	]*([^ 	+?:=]+)[ 	]*([+?:]|::)?=.*$$/\2	\1	\$$(\2)/p;D' \
		$(MAKEFILE_LIST) \
	| awk '!x[$$1]++' \
	| sort -d \
	| { echo 'VARIABLE	DESCRIPTION	VALUE'; cat; } \
	| column -t -s'	' \
	| tr '\n' '\1'))
	@ echo "$(ECHO)" | tr '\1' '\n'

.PHONY: help_targets
help_targets:
	@ sed -nrE \
 			-e 'N;s/^#:[ 	]*(.+)\n([^ 	:]+)[ 	]*[:]{1,2}($$|[^=].*$$)/\2	\1/p;D' \
			$(MAKEFILE_LIST) \
		| awk '!x[$$1]++' \
		| sort -d \
		| { echo 'TARGET	DESCRIPTION'; cat; } \
		| column -t -s'	'
