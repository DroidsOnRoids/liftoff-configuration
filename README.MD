# Liftoff

## Installation
```bash
$ brew tap thoughtbot/formulae
$ brew install liftoff
```

Then place configuration file `.liftoffrc` inside the local `./.liftoffrc` or `~/.liftoffrc`,
and hidden directory `.liftoff` with all contents inside the local `./` or in the user's directory `~/`.

* `~` is recommended for default setup for all projects.
* `.` is recommended for every single project (or in basic configuration not recommended at all).

The easiest way to do this is run this being in main directory of the repo:
```bash
$ cp -r .liftoff ~
$ cp .liftoffrc ~/.liftoffrc
```

## Usage

### Required command
```bash
$ liftoff -n "PROJECTNAME"
```
It is not recommended, because `UnitTests` becomes the target name. Recommended tests' target name is `PROJECTNAMETests`.

### Recommended command
```bash
$ liftoff -n "PROJECTNAME" --test-target-name "TESTTARGETNAME"
```
For example:
```bash
$ liftoff -n "Clock" --test-target-name "ClockTests"
```

### Optional parameters
* `-t N`                set the indentation width in spaces (default is `4`)
* `-C COMPANY NAME`     set the company name (default is `Droids on Roids`)
* `-a AUTHOR NAME`      set the author name (default is `Droids on Roids`)
* `-t IDENTIFIER`       set the company identifier (`com.company`) (default is `com.droidsonroids`)
* `--no-cocoapods`      disable CocoaPods integration (default is enabled)
