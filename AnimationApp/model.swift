//
//  model.swift
//  AnimationApp
//
//  Created by Даниил Хантуров on 29.04.2021.
//



struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var discription: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%0.2f", force))
        duration: \(String(format: "%0.2f", duration))
        delay: \(String(format: "%0.2f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(name: DataManager.shared.presents.randomElement()?.rawValue ?? "slideLeft",
                  curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
                  force: Float.random(in: 1...2),
                  duration: Float.random(in: 1...2),
                  delay: 0.3)
    }
    
}
