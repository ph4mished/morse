import strformat, help, morse_engine
import commodore

commandline:
  argument(input, string, false)
  exitoption(@["help", "h"], helpMessage())
  exitoption(@["version", "v"], VERSION)
  flag(decode, @["decode", "d"])
  


when isMainModule:

#read texts from stdin and file from input
  if decode:
    if input == "":
      for line in stdin.lines():
        echo morseDecode(line)
      quit(0)
    
    if input.len > 0:
      try:
        echo morseDecode(input.readFile())
        quit(0)
      except Exception as e:
        echo fmt "ERROR: {e.msg}"
        echo "Note: Make sure the path exist and is a readable file(not a directory)"
        quit(1)
  else:
    if input == "":
      for line in stdin.lines():
        echo morseEncode(line)
      quit(0)
    
    if input.len > 0:
      try:
        echo morseEncode(input.readFile())
        quit(0)
      except Exception as e:
        echo fmt "ERROR: {e.msg}"
        echo "Note: Make sure the path exist and is a readable file(not a directory)"
        quit(1)
    