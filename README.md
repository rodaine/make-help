# make help

_A make target that prints helpful information about other make variables and targets_

## Usage

Annotate variables and target recipes you want to appear with a leading comment beginning with `#:`. 
"Phony" targets and `?=` variables are typically good candidates:   

```Makefile
#: A variable
SOME_VARIABLE ?= foo

#: A target
install:
	@echo "$(SOME_VARIABLE)"
```

Copy the contents of [`Makefile`](./Makefile) in to your own, or include it (ideally at the very end):

```Makefile
include path/to/make-help/Makefile
```

Run `make help`:

```console
$ make help
VARIABLE        DESCRIPTION   VALUE
SOME_VARIABLE   A variable    foo

TARGET   DESCRIPTION
help     This list of useful make variables & targets
install  A target
```

## Dependencies

`make help` relies on utilities found on macOS and most Linux systems:

- `sed`
- `awk`
- `sort`
- `column`
- `tr`

## Limitations

- Tested with GNU Make and Remake. 
  Does not work with BSD Make, as it seems to choke on the `eval` and `shell` macros within the `help_variables` recipe. 
  YMMV with other flavors.
- Does not conform to a particularly strict Make grammar. 
  There almost certainly are unexpected edge cases as a result.
- Ignores multi-target recipes (e.g., `foo bar:`), but variable targets (e.g., `$(SOME_VAR):`) are preserved and not expanded in the output. 
- Only captures the documentation for the first appearance of an annotated target or variable. 
  However, variable values are fully expanded in the output, including any overrides from the environment.
- The value shown for variables in the output reflects their value at the position of the `help` target, which may be different from the value seen by other targets.
