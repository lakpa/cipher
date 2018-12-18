import Foundation

func encryptUsingRot13(_ message: String) -> String {
  var encryptedMessage = ""
  for character in message.unicodeScalars {
    var val = character.value
    switch (val) {
    case 0x61 ... 0x7A:
      val += 13
      if val > 0x7A {
        val = val - 26
      }
    case 0x41 ... 0x5A:
      val += 13
      if val > 0x5A {
        val = val - 26
      }
    default:
      break
    }
   
    if let val = UnicodeScalar(val) {
      encryptedMessage += String(val)
    }
  }
  return encryptedMessage
}

print(encryptUsingRot13("Aello"))
