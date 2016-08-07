import Foundation

print("help")
let sjw = SwiftJavaWrapper(pathToJar: "/home/kanteran/Desktop/swiftNetworkLibTest.jar")
print("test")
sjw.write(data: "Hallo wie geht es dir?")
print(sjw.read())

while(true) {
  sleep(1)
  print(sjw.read())
  print(sjw.readError())
}
