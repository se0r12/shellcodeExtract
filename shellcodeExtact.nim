import os, strutils
proc main =
    let cmdArg: seq[string] = commandLineParams()
    let filename = cmdArg[0]

    let file: File = open(filename, fmRead)

    var binary: string = file.readAll().toHex.toLowerAscii()
    var binarySeq: seq[string]

    var i: int = 0

    for _ in 0 ..< len(binary) div 2:
        binarySeq.add(binary[i ..< i+2])
        i += 2

    for str in binarySeq:
        stdout.write("\\x" & str)
    stdout.write("\n")
    close(file)

when isMainModule:
  if not paramCount() == 1:
    quit("parameterを正しく入力して")
  main()
