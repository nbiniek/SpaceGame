//
//  HUD.swift
//  SpaceAdventure
//
//  Created by Noah Biniek on 1/4/16.
//  Copyright © 2016 NoahProjects. All rights reserved.
//

import Foundation
import SpriteKit

class HUD: SKNode {
    let xLab = SKLabelNode(text: "X: 0")
    let yLab = SKLabelNode(text: "Y: 0")
    var x: Int = 0
    var y: Int = 0
    
    init(screenSize: CGSize) {
        super.init()
        xLab.fontName = "timeburner"
        xLab.fontSize = 9.0
        xLab.position = CGPoint(x: screenSize.width * 0.9, y: screenSize.height * 0.9)
        xLab.horizontalAlignmentMode = .Left
        self.addChild(xLab)
        
        yLab.fontName = "timeburner"
        yLab.fontSize = 9.0
        yLab.position = CGPoint(x: screenSize.width * 0.9, y: screenSize.height * 0.87)
        yLab.horizontalAlignmentMode = .Left
        self.addChild(yLab)
        

        
        self.zPosition = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    func setX(x: Int, y: Int) {
        self.x = x
        self.y = y
        xLab.text = "X: \(self.x)"
        yLab.text = "Y: \(self.y)"
    }
}
