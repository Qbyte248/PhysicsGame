import Foundation

class SwiftJavaWrapper {

  private let task = Task()
  private let input = Pipe()
  private let output = Pipe()
  private let err = Pipe()

  init(pathToJar : String) {
	// start java program
    task.launchPath = "/usr/bin/env"
    task.arguments = ["java", "-jar", pathToJar]
    task.standardInput = input
    task.standardOutput = output
    task.standardError = err
    task.launch()
  }

  func write(data : String) {
    input.fileHandleForWriting.write("Hello World".data(using: .utf8)!)
  }

  func read() -> String {
    return String(data: output.fileHandleForReading.availableData, encoding: .utf8)!
  }

  func readError() -> String {
    return String(data: err.fileHandleForReading.availableData, encoding: .utf8)!
  }

}
