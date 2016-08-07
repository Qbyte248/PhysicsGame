//
//  main.swift
//  PhysicsGame
//
//  Created by Maximilian Hünenberger on 7.8.16.
//  Copyright © 2016 MaHue. All rights reserved.
//

import Foundation

print("Hello, World!")

func shell(_ launchPath: String = "/usr/bin/env", args: String...) {
	let task = Task()
	task.launchPath = launchPath
	task.arguments = args
	task.launch()
	task.waitUntilExit()
}
/*

shell(args: "killall", "java")
shell(args: "java", "-cp", pathToWorkingDirectory, "PhysicsGame/Java/DrawingServer")
*/
InputStream.getStreamsToHost(withName: "localhost",
                             port: 1234,
                             inputStream: nil,
                             outputStream: &Stream.output)

outputStream?.open()

//shell(args: "java", "-cp", pathToWorkingDirectory, "PhysicsGame/Java/WorkaroundStreamer", command.convertToString())



setup()
while Program.isRunning {
	let time = 1 / Program.framesPerSecond
	Thread.sleep(forTimeInterval: time)
	run()
	world.update(time: time)
	world.repaint()
}

print("finished Swift")

