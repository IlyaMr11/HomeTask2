//
//  ViewController.swift
//  HW3_Reference
//
//  Created by Владимир Мацнев on 21.10.2024.
//

import UIKit
import Lottie

//MARK: - ANIMATION PROPERTY
public var animationTitle: String?
public var animationSpeed: Double?
public var animationColor: UIColor?

class ViewController: UIViewController {
    
    //MARK: - CONSTANTS
    let speedArray = [0.5, 1.0, 2.0]
    let colorArray: [UIColor] = [.black, .gray, .white]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.backgroundColor = UIColor.purple.cgColor
        loadUIObj()
        viewAnimation()
        // Do any additional setup after loading the view.
    }
    
    func loadUIObj() {
        loadLabel(label: titleLabel)
        loadButton(button: startButton)
        loadColorSegment(segment: colorSegment)
        loadColorLabel(label: colorLabel)
        loadSpeedSegment(segment: speedSegment)
        loadSpeedLabel(label: speedLabel)
        loadFirstButton(button: firstAnimationButton)
        loadSecondButton(button: secondAnimattionButton)
        loadThirdButton(button: thirdAnimattionButton)
    }
    
    //MARK: - LABELS
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Выберите анимацию"
        label.font = .boldSystemFont(ofSize: .init(25))
        label.textAlignment = .center
        return label
    }()
    
    private lazy var colorLabel: UILabel = {
        let label = UILabel()
        label.text = "Color"
        label.font = .boldSystemFont(ofSize: .init(20))
        label.textAlignment = .center
        return label
    }()
    
    private lazy var speedLabel: UILabel = {
        let label = UILabel()
        label.text = "Speed"
        label.font = .boldSystemFont(ofSize: .init(20))
        label.textAlignment = .center
        return label
    }()
    
    //MARK: - BUTTONS
    private lazy var startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Запустить", for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.addTarget(self, action: #selector(pressStart(button:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var firstAnimationButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 1", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 1
        button.addTarget(self, action: #selector(pressAnimation(button:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var secondAnimattionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 2", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 2
        button.addTarget(self, action: #selector(pressAnimation(button:)), for: .touchUpInside)
        return button
    }()
    
    private lazy var thirdAnimattionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 3", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 3
        button.addTarget(self, action: #selector(pressAnimation(button:)), for: .touchUpInside)
        return button
    }()
    
    //MARK: - SEGMETNS
    private lazy var colorSegment: UISegmentedControl  = {
        let segment = UISegmentedControl(items: ["Black", "Gray", "White"])
        segment.layer.borderWidth = 1
        segment.layer.borderColor = UIColor.white.cgColor
        segment.addTarget(self, action: #selector(colorChanged(segment:)), for: .valueChanged)
        return segment
    }()
    
    private lazy var speedSegment: UISegmentedControl  = {
        let segment = UISegmentedControl(items: ["0.5x", "1.0x", "2.0x"])
        segment.layer.borderWidth = 1
        segment.layer.borderColor = UIColor.white.cgColor
        segment.addTarget(self, action: #selector(speedChanged(segment:)), for: .valueChanged)
        return segment
    }()
    
    
    //MARK: - LOAD LABELS
    func loadLabel(label: UILabel) {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 70).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label.heightAnchor.constraint(equalToConstant: 75).isActive = true
    }
    
    func loadColorLabel(label: UILabel) {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.bottomAnchor.constraint(equalTo: colorSegment.topAnchor, constant: -17).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func loadSpeedLabel(label: UILabel) {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.bottomAnchor.constraint(equalTo: speedSegment.topAnchor, constant: -17).isActive = true
        label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    //MARK: - LOAD BUTTON
    func loadButton(button: UIButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 160).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func loadFirstButton(button: UIButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func loadSecondButton(button: UIButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: firstAnimationButton.bottomAnchor, constant: 15).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func loadThirdButton(button: UIButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: secondAnimattionButton.bottomAnchor, constant: 15).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    //MARK: - LOAD SEGMENTS
    func loadColorSegment(segment: UISegmentedControl) {
        view.addSubview(segment)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.bottomAnchor.constraint(equalTo: startButton.topAnchor, constant: -30).isActive = true
        segment.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segment.widthAnchor.constraint(equalToConstant: 280).isActive = true
        segment.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func loadSpeedSegment(segment: UISegmentedControl) {
        view.addSubview(segment)
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.bottomAnchor.constraint(equalTo: colorLabel.topAnchor, constant: -20).isActive = true
        segment.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        segment.widthAnchor.constraint(equalToConstant: 280).isActive = true
        segment.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    //MARK: - TARGETS
    @objc func pressStart(button: UIButton) {
        if  isReadyToShowAnimation() {
            startAnimation(button: button)
        } else {
            showAlert()
            errorStart(button: button)
        }
    }
    
    @objc func speedChanged(segment: UISegmentedControl) {
        animationSpeed = speedArray[segment.selectedSegmentIndex]
    }
                          
    @objc func colorChanged(segment: UISegmentedControl) {
        animationColor = colorArray[segment.selectedSegmentIndex]
    }
    
    @objc func pressAnimation(button: UIButton) {
        for but in [firstAnimationButton, secondAnimattionButton, thirdAnimattionButton] {
            but.backgroundColor = nil
        }
        animationTitle = "animation \(button.tag)"
        button.backgroundColor = .white
    }
    
    //MARK: - ANIMATIONS
    //анимация увеличения кнопоки
    func startAnimation(button: UIButton) {
        let animation = CABasicAnimation(keyPath: "transform.scale")
        animation.fromValue = 1
        animation.toValue = 1.15
        animation.duration = 0.15
        animation.autoreverses = true
        button.layer.add(animation, forKey: "basic")
        Timer.scheduledTimer(withTimeInterval: 0.3, repeats: false) { _ in
            let AnimationVC = AnimationController()
            self.navigationController?.pushViewController(AnimationVC, animated: false)
        }
    }
    
    //анимация которая трясет кнопку если не все парматры выбраны
    func errorStart(button: UIButton) {
        let animation = CABasicAnimation(keyPath: "position.x")
        animation.fromValue = view.center.x + 5
        animation.toValue = view.center.x - 5
        animation.duration = 0.05
        animation.repeatCount = 3
        animation.autoreverses = true
        button.layer.add(animation, forKey: "postion.x")
    }
    
    //анимация которая меняет цвет с синего на фиолетовый
    func viewAnimation() {
        let animation = CABasicAnimation(keyPath: "backgroundColor")
        animation.fromValue = UIColor.blue.cgColor
        animation.toValue = UIColor.purple.cgColor
        animation.duration = 7
        animation.autoreverses = true
        animation.repeatCount = .greatestFiniteMagnitude
        self.view.layer.add(animation, forKey: "backgroundColor")
    }
    
    //MARK: - CHECK: IS READY?
    func isReadyToShowAnimation() -> Bool {
        guard animationSpeed != nil else { return false}
        guard animationColor != nil else { return false}
        guard animationTitle != nil else { return false}
        return true
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Ошибка показа анимации", message: "Необходимо выбрать все парматеры", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
