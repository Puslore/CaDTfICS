import macros


macro helloWorld(): untyped =
  const key = 0x42
  const encoded = [0x0A, 0x27, 0x2E, 0x2E, 0x2D, 0x6E, 0x62,
                   0x15, 0x2D, 0x30, 0x2E, 0x26, 0x63]
  var decoded = newString(encoded.len)
  for i, b in encoded:
    decoded[i] = chr(b xor key)

  result = newCall(bindSym"echo", newLit(decoded))

helloWorld()

static:
  echo treeRepr(helloWorld())
