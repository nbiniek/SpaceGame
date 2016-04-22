//
//  Player.swift
//  SpaceAdventure
//
//  Created by Noah Biniek on 1/6/16.
//  Copyright © 2016 NoahProjects. All rights reserved.
//

import Foundation
import SpriteKit

@available(iOS 9.0, *)
class Player: SKSpriteNode {

//    let maxVel: CGFloat = 5.0
//    
//    var xVel: CGFloat = 0.0
//    var yVel: CGFloat = 0.0
    
    init(screenSize: CGSize) {
        let texture = SKTexture(imageNamed: "player")
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        self.setScale(0.03) // to be eliminated w/ accurate player asset
        self.position = CGPoint(x: screenSize.width/2.0, y: screenSize.height/2.0) // position: center of screen
        self.name = "player"
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.height / 2.0) // physics body: circle of height diameter
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    func addVelX(xAccel: CGFloat) {
//        xVel += xAccel
//        xVel = CGFloat(min(xVel, maxVel))
//        xVel = CGFloat(max(xVel, -maxVel))
//    }
//    func addVelY(yAccel: CGFloat) {
//        yVel += yAccel
//        yVel = CGFloat(min(yVel, maxVel))
//        yVel = CGFloat(max(yVel, -maxVel))
//    }
//    
//    func boundLayerPos(aNewPosition : CGPoint) -> CGPoint {
//        let winSize = CGSizeMake(2000.0, 2000.0)
//        var retval = aNewPosition
//        
//        // bound left and right //
//        retval.x = CGFloat(max(retval.x, 0)) // Logic: when panning right, retval.x will be negative
//        retval.x = CGFloat(min(retval.x, winSize.width))
//        
//        // bound bottom and top //
//        //print("py1: \(retval.y)")
//        retval.y = CGFloat(max(retval.y, 0)) // Logic: when panning up, retval.y will be negative
//        //print("py2: \(retval.y)")
//        retval.y = CGFloat(min(retval.y, winSize.height))
//        //print("py3: \(retval.y)")
//        
//        return retval
//    }
//    func update() {
//        let newX = self.position.x + xVel
//        let newY = self.position.y + yVel
//        
//        self.position = boundLayerPos(CGPoint(x: newX, y: newY))
//        
//    }

}
