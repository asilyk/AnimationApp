//
//  Animation.swift
//  AnimationApp
//
//  Created by Alexander on 08.02.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.1f", force))
        duration: \(String(format: "%.1f", duration))
        delay: \(String(format: "%.1f", delay))
        """
    }

    static func getAnimation() -> Animation {
        let dataManager = DataManager.shared

        let animation = Animation(
            preset: dataManager.presets.randomElement() ?? "",
            curve: dataManager.curves.randomElement() ?? "",
            force: Double.random(in: 0.5...1),
            duration: Double.random(in: 1...1.5),
            delay: Double.random(in: 0.2...0.5)
        )

        return animation
    }
}
