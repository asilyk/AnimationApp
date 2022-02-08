//
//  ViewController.swift
//  AnimationApp
//
//  Created by Alexander on 08.02.2022.
//

import Spring

class MainViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet var animationPropertiesView: SpringView!
    @IBOutlet var animationPropertiesLabel: UILabel!

    @IBOutlet var runAnimationButton: UIButton!

    // MARK: - Private Properties
    private var animation = Animation.getAnimation()

    // MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        setupPropertiesLabel()
        setupRunButton()
    }

    // MARK: - IB Actions
    @IBAction func runAnimation() {
        setupPropertiesView()
        animationPropertiesView.animate()
    }

    @IBAction func changeAnimation() {
        animation = Animation.getAnimation()

        setupPropertiesLabel()
        setupRunButton()
        runAnimation()
    }
}

// MARK: - Private Methods
extension MainViewController {
    private func setupPropertiesLabel() {
        animationPropertiesLabel.text = animation.description
    }

    private func setupPropertiesView() {
        animationPropertiesView.animation = animation.preset
        animationPropertiesView.curve = animation.curve
        animationPropertiesView.force = CGFloat(animation.force)
        animationPropertiesView.duration = CGFloat(animation.duration)
        animationPropertiesView.delay = CGFloat(animation.delay)
    }

    private func setupRunButton() {
        runAnimationButton.setTitle("Run \(animation.preset) animation", for: .normal)
    }
}
