# Liftoff

## Installation
$ brew tap thoughtbot/formulae
$ brew install liftoff

Then place configuration file .liftoffrc inside the local ./.liftoffrc or ~/.liftoffrc,
and hidden folder .liftoff with all contents inside the local ./ or in the user's directory ~/

~ is recommended for default setup for all projects.
. is recommended for every single project (or in basic configuration not recommended at all).

## Usage

### Required command
$ liftoff -n "PROJECTNAME"
It is not recommended, because makes "UnitTests" as target name. Recommended tests' target name is "PROJECTNAMETests"

### Recommended command
$ liftoff -n "PROJECTNAME" --test-target-name "TESTTARGETNAME"
For example:
$ liftoff -n "Flashpick" --test-target-name "FlashPickTests"

### Optional parameters
-t N                set the indentation width in spaces (default is 4)
-C COMPANY NAME     set the company name (default is "Droids on Roids")
-a AUTHOR NAME      set the author name (default is "Droids on Roids")
-t IDENTIFIER       set the company identifier (com.company) (default is com.droidsonroids)