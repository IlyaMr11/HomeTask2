//
//  AnimationController.swift
//  HW3_Reference
//
//  Created by Илья Морозов on 03.11.2024.
//
import UIKit
import Lottie

class AnimationController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playAnimation()
    }
    func playAnimation() {
        guard let nameAnimation = animationTitle else { return }
        guard let speedAnimation = animationSpeed else { return }
        guard let colorAnimation = animationColor else { return }
        let animationView = LottieAnimationView(name: nameAnimation)
        animationView.frame = self.view.bounds
        animationView.backgroundColor = colorAnimation
        view.addSubview(animationView)
        animationView.animationSpeed = speedAnimation
        animationView.play {_ in
            self.navigationController?.popViewController(animated: false)
        }
    }

}
