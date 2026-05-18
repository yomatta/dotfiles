# README

Purpose: Personal notes about scripting. 

## sed

### sed -E

Example: ...

In `sed` you could define _word patterns_ between parentheses and you could substitute them with `\` (backslash) followed by a one-digit number. 

`echo '"tag_name": "1.22.0"' | sed -E 's/"([a-z]+\_[a-z]+)": "([0-9\.]+)"/\2/'`

* `-E` use extended regular expressions
* `s/Part1/Part2/` the main structure
* `"` regex pattern starts with `"`
* `([a-z]+\_[a-z]+)` first _word pattern_ contains two part of chars joined with `_`
* `": "` after that these sequence symbols would occur
* `([0-9\.]+)` the second _word pattern_ contains one or more digits with `.`
* `"` pattern ends with it.
* `\2` now you call the second _word pattern_.

Output: `1.22.0`
