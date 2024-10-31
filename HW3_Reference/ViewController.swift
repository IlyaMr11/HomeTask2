//
//  ViewController.swift
//  HW3_Reference
//
//  Created by Владимир Мацнев on 21.10.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        loadLabel(label: titleLabel)
        loadButton(button: startButton)
        loadColorSegment(segment: colorSegment)
        loadColorLabel(label: colorLabel)
        loadSpeedSegment(segment: speedSegment)
        loadSpeedLabel(label: speedLabel)
        loadFirstButton(button: firstAnimattion)
        loadSecondButton(button: secondAnimattion)
        loadThirdButton(button: thirdAnimattion)
        // Do any additional setup after loading the view.
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
        return button
    }()
    
    private lazy var firstAnimattion: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 1", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBrown.cgColor
        return button
    }()
    
    private lazy var secondAnimattion: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 2", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBrown.cgColor
        return button
    }()
    
    private lazy var thirdAnimattion: UIButton = {
        let button = UIButton()
        button.setTitle("Animation 3", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemBrown.cgColor
        return button
    }()
    
    private lazy var colorSegment: UISegmentedControl  = {
        let segment = UISegmentedControl(items: ["Black", "Gray", "White"])
        return segment
    }()
    
    private lazy var speedSegment: UISegmentedControl  = {
        let segment = UISegmentedControl(items: ["0.5x", "1.0x", "2.0x"])
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
        button.topAnchor.constraint(equalTo: firstAnimattion.bottomAnchor, constant: 15).isActive = true
        button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 300).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func loadThirdButton(button: UIButton) {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: secondAnimattion.bottomAnchor, constant: 15).isActive = true
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
    
    
}
