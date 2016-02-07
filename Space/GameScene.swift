//
//  GameScene.swift
//  Space
//
//  Created by Noah Biniek on 1/11/16.
//  Copyright (c) 2016 NoahProjects. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var space: Space!
    var hud: HUD!
    var player: Player!
    var indicator: SKSpriteNode!
    
    var cam: SKCameraNode!
    
    var panGesture: UIGestureRecognizer!
    var selectedNode = SKSpriteNode()
    
    override init(size: CGSize) {
        super.init(size: size)
        
        // Add Space //
        self.space = Space()
        self.addChild(space)
        
        // Add Player //
        self.player = Player(screenSize: self.size)
        self.addChild(player)
        
        // Add Earth //
        let earth = Earth()
        self.addChild(earth)
        
        // Add HUD //
        self.hud = HUD(screenSize: self.size)
        self.addChild(hud)
        
        // Add Velocity Gradient //
        let gradient = ThrottleIndicator()
        gradient.position = CGPoint(x: self.size.width * 0.9, y: self.size.height * 0.2)
        self.addChild(gradient)
        
        
        self.physicsWorld.gravity = CGVectorMake(0.0, 0.0)
        
        cam = SKCameraNode()
        cam.position = player.position
        self.camera = cam
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
    }
    
//    func selectNodeForTouch(touchLocation : CGPoint) {
//        
//        let touchedNode = self.nodeAtPoint(touchLocation)
//        if touchedNode is SKSpriteNode {
//            if !selectedNode.isEqual(touchedNode) { // is the node already selected?
//                
//                selectedNode = touchedNode as! SKSpriteNode
//                
//                // based on node selected, various actions may be implemented later //
//            }
//        }
//    }
//    
//    // Pan Gesture Handler //
//    func handlePanFrom(recognizer : UIPanGestureRecognizer) {
//        if recognizer.state == .Began {
//            var touchLocation = recognizer.locationInView(recognizer.view)
//            touchLocation = self.convertPointFromView(touchLocation)
//            
//            self.selectNodeForTouch(touchLocation)
//        } else if recognizer.state == .Changed {
//            var translation = recognizer.translationInView(recognizer.view!)
//            translation = CGPoint(x: translation.x, y: -translation.y)
//            
//            self.panForTranslation(translation)
//            
//            recognizer.setTranslation(CGPointZero, inView: recognizer.view)
//        } else if recognizer.state == .Ended {
//            if selectedNode.name == "background" {
//                let scrollDuration = 0.2
//                let velocity = recognizer.velocityInView(recognizer.view)
//                let pos = selectedNode.position
//                
//                let p = CGPoint(x: velocity.x * CGFloat(scrollDuration), y: -velocity.y * CGFloat(scrollDuration))
//                
//                var newPos = CGPoint(x: pos.x + p.x, y: pos.y + p.y)
//                newPos = self.boundLayerPos(newPos)
//                selectedNode.removeAllActions()
//                
//                let moveTo = SKAction.moveTo(newPos, duration: scrollDuration)
//                moveTo.timingMode = .EaseOut
//                selectedNode.runAction(moveTo)
//            }
//        }
//    }
//    
//    func panForTranslation(translation : CGPoint) {
//        let position = selectedNode.position
//        if selectedNode.name! == "background" {
//            let aNewPosition = CGPoint(x: position.x + translation.x, y: position.y + translation.y)
//            background.position = boundLayerPos(aNewPosition)
//        }
//        
//    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
//        let firstTouch = touches.first
//        let location = (firstTouch?.locationInNode(self))!
//        cam.position = location
//        for touch in touches {
//            let loc = touch.locationInNode(self)
//            let node = self.nodeAtPoint(loc)
//            if (node.name == "accel") {
//                self.indicator.setScale(1.1)
//            }
//        }
        
    }
    
//    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        <#code#>
//    }
   
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {

//        self.indicator.setScale(1.0)

    }
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
