//
//  Start.swift
//  PhysicsGame
//
//  Created by Maximilian Hünenberger on 7.8.16.
//  Copyright © 2016 MaHue. All rights reserved.
//

import Foundation


var item = Item(position: Point(x: 20, y: 100))

func setup() {
	/*
	var texture = Texture()
	texture.append(.color(Color(red: 0, green: 1, blue: 0, alpha: 1)))
	texture.append(.rectangle(Rectangle(0, 0, 100, 200)))
	
	item.texture = texture
	item.setPhysicsBody(relativePosition: Point(x: 0, y: 0),
	                    size: Size(100, 200),
	                    mass: 1,
	                    friction: 1)
	
	let block = Block(position: Point(x: 0, y: 10),
	                  size: Size(300, 10),
	                  color: Color(red: 0, green: 0, blue: 1, alpha: 1))
	
	texture.drawables[0] = .color(Color(red: 1, green: 1, blue: 0, alpha: 1))
	let item2 = Item(position: Point(x: 150, y: 40), texture: texture)
	item2.setPhysicsBody(relativePosition: Point(x: 0,y: 0),
	                     size: Size(100, 200),
	                     mass: 1,
	                     friction: 1)
	
	for i in 0...3 {
		var background = Texture()
		background.append(.color(Color(red: 1, green: Double(i) / 3, blue: 0, alpha: 1)))
		background.append(.rectangle(Rectangle(0, Double(i) * 100, 1000, 100)))
		
		world.backgrounds.append(background)
	}
	
	world.addItem(item)
	world.addItem(item2)
	world.addBlock(block)
	
	
	item.velocity.x = 100
	item.velocity.y = 100
	
	var polygon = Polygon()
	polygon.append(Vector2D(30, 40))
	
	texture.append(.polygon(polygon))*/
	
	// ---------
	
	var texture = Texture()
	
	var color = Color(red: 1, green: 0, blue: 0, alpha: 1)
	texture.append(.color(color))
	
	/*var rectangle = Rectangle(origin: Vector2D(40, 70),
	size: Size(100, 200))*/
	var rectangle = Rectangle(0, 0, 100, 200)
	texture.append(.rectangle(rectangle))
	
	
	color = Color(red: 1, green: 1, blue: 0, alpha: 1)
	texture.append(.color(color))
	rectangle = Rectangle(0, 0, 100, 200)
	texture.append(.rectangle(Rectangle(10, 200, 50, 50)))
	
	color = Color(red: 0, green: 1, blue: 1, alpha: 1)
	texture.append(.color(color))
	texture.append(.rectangle(Rectangle(10, 200 + 20, 10, 10)))
	
	color = Color(red: 0, green: 1, blue: 1, alpha: 1)
	texture.append(.color(color))
	texture.append(.rectangle(Rectangle(10 + 40, 200 + 20, 10, 10)))
	
	color = Color(red: 0, green: 1, blue: 0, alpha: 1)
	texture.append(.color(color))
	
	var polygon = Polygon()
	polygon.append(Vector2D(30, 40))
	polygon.append(Vector2D(50, 60))
	polygon.append(Vector2D(100, 40))
	polygon.append(Vector2D(30, 20))
	polygon.move(Vector2D(-20, 150))
	texture.append(.polygon(polygon))
	
	
	texture.append(.color(Color(red: 0, green: 0, blue: 0, alpha: 1)))
	texture.append(.rectangle(Rectangle(0, 0, 10, 10)))
	
	itemX.texture = texture
	
	itemX.setPhysicsBody(relativePosition: Point(x: 0, y: 0),
	                     size: Size(100, 250),
	                     mass: 1)

	itemX.velocity.x = 10
	world.addItem(itemX)
	
	var floor = Block(position: Point(x: 0, y: 0),
	                  size: Size(1000, 20),
	                  color: Color(red: 1, green: 0, blue: 1, alpha: 1))
	world.addBlock(floor)
}

var itemX = Item(position: Point(x: 100, y: 100))

func run() {
	
	//world.position.x = 300 - item.position.x
	print(world.items[0].position)
}


func mouseMoved(position: Vector2D) {
	print("mouse moved !!!!!!!!!!!!")
}
