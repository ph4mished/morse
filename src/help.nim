import strutils, terminal, strformat

let version = "0.1.0"
let VERSION* = fmt " morse v{version} \n Author: Jonathan B. Owusu (https://github.com/ph4mished/morse)"



proc helpMessage*(): string =
  result = ""
  
  result.add("===============================================================".center(terminalWidth()) & "\n")
  result.add(center(fmt "Morse {version} - Morse Code encoding and decoding", terminalWidth()) & "\n")
  result.add("===============================================================".center(terminalWidth()) & "\n")
  result.add(" Encode or Decode file in Morse Code.\n\n")

  
  result.add(" \nUsage: morse <FILE> [OPTIONS] \n\n")
  result.add(" Input may be a file path or stdin\n\n")
  result.add(" When no FILE is provided, read from standard input\n\n")
  
  
  result.add("===== ARGUMENT =====".center(terminalWidth()) & "\n")
  result.add(" <FILE>".alignLeft(30) & "File for morse encoding/decoding.\n\n")

  result.add("===== OPTIONS =====".center(terminalWidth()) & "\n")
  result.add(" -d, --decode".alignLeft(30) & "Decode morse code\n")
  result.add(" -h, --help".alignLeft(30) & "Show this help.\n")
  result.add(" -v, --version ".alignLeft(30) & "Show version information.\n\n\n")

  #examples
  
  result.add("====== EXAMPLES =====".center(terminalWidth()) & "\n")
  result.add("  # Encoding\n")
  result.add("    morse my_file.txt\n\n")
  result.add("  # Text Encoding\n")
  result.add("    echo 'hello world' | morse\n\n")
 

  result.add("  # Decoding\n")
  result.add("    morse enc_file.txt -d\n\n")
  result.add("  # Text Decoding\n")
  result.add("    echo '.... . .-.. .-.. ---   .-- --- .-. .-.. -..' | morse -d\n\n")

  result.add(" NOTE: input containing spaces or special characters should be placed in quotes.\n\n")
