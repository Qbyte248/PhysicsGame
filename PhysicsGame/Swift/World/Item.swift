//
//  Item.swift
//  Swift 3 TestProject
//
//  Created by Maximilian Hünenberger on 27.7.16.
//
//

import Foundation

final class Item {
	
	var position: Point {
		get {
			return Point(x: physicsBody.body.position.x - physicsBody.relativePosition.x,
			             y: physicsBody.body.position.y - physicsBody.relativePosition.y)
		}
		set {
			physicsBody.body.position = Point(x: newValue.x + physicsBody.relativePosition.x,
			                                  y: newValue.y + physicsBody.relativePosition.y)
		}
	}
	var velocity: Vector2D {
		get { return physicsBody.body.velocity }
		set { physicsBody.body.velocity = newValue }
	}
	
	var texture: Texture
	
	var interacts: Bool
	var physicsBody: (body: PhysicsBody, relativePosition: Point)
	
	// MARK: - init
	init(position: Point,
	     interacts: Bool = true,
	     texture: Texture = Texture()) {
		
		self.texture = texture
		self.interacts = interacts
		
		physicsBody = (PhysicsBody(position: position, size: Size(0, 0), mass: 1),
		               Point(x: 0, y: 0))
	}
	
	func draw(offset: Vector2D) {
		texture.moved(Vector2D(position.x, position.y)).draw(offset: offset)
		//physicsBody.body.draw()
	}
	
	func setPhysicsBody(relativePosition: Point,
						size: Size,
	                    velocity: Vector2D = Vector2D(0,0),
	                    mass: Double,
	                    friction: Double = 0.0) {
		physicsBody = (PhysicsBody(position: Point(x: self.position.x + relativePosition.x,
		                                           y: self.position.y + relativePosition.y),
		                           size: size,
		                           mass: mass,
		                           friction: friction),
		               relativePosition
		)
	}
	
	func interact(_ item: Item) {
		if interacts {
			self.physicsBody.body.interact(item.physicsBody.body, now: false)
		}
	}
	func interact(_ block: Block) {
		if interacts {
			self.physicsBody.body.interact(block.physicsBody)
		}
	}
	
	func update(time: Double, forceField: (Point) -> Vector2D) {
		physicsBody.body.update(time: time, forceField: forceField)
	}
	
	
}
