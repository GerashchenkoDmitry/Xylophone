//
//  MainView.swift
//  Xylophone
//
//  Created by Дмитрий Геращенко on 02.04.2021.
//

import UIKit
import AVFoundation

class MainView: UIViewController {
  
  var safeArea = UILayoutGuide()
  
  var player: AVAudioPlayer?
  
  let buttonC = UIButton()
  let buttonD = UIButton()
  let buttonE = UIButton()
  let buttonF = UIButton()
  let buttonG = UIButton()
  let buttonA = UIButton()
  let buttonB = UIButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupViews()
  }
  
  @objc func playSound(sender: Any) {
    let button = sender as? UIButton
    guard let url = Bundle.main.url(forResource: button?.titleLabel?.text, withExtension: "wav") else { return }
    
    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }

        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
  }
  
  func setupViews() {
    
    safeArea = view.layoutMarginsGuide
    view.backgroundColor = .white
    setupCButton()
    setupDButton()
    setupEButton()
    setupFButton()
    setupGButton()
    setupAButton()
    setupBButton()
  }
  
  func setupCButton() {
    view.addSubview(buttonC)
    
    buttonC.translatesAutoresizingMaskIntoConstraints = false
    buttonC.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 10).isActive = true
    buttonC.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
    buttonC.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
    buttonC.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
    buttonC.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
    
    buttonC.setTitle("C", for: .normal)
    buttonC.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonC.backgroundColor = .systemRed
    buttonC.layer.cornerRadius = 20
    
    buttonC.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupDButton() {
    view.addSubview(buttonD)
    
    buttonD.translatesAutoresizingMaskIntoConstraints = false
    buttonD.topAnchor.constraint(equalTo: buttonC.bottomAnchor, constant: 10).isActive = true
    buttonD.leadingAnchor.constraint(equalTo: buttonC.leadingAnchor, constant: 10).isActive = true
    buttonD.trailingAnchor.constraint(equalTo: buttonC.trailingAnchor, constant: -10).isActive = true
    buttonD.centerXAnchor.constraint(equalTo: buttonC.centerXAnchor).isActive = true
    buttonD.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
        
    buttonD.setTitle("D", for: .normal)
    buttonD.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonD.backgroundColor = .systemOrange
    buttonD.layer.cornerRadius = 20
    buttonD.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupEButton() {
    view.addSubview(buttonE)
    
    buttonE.translatesAutoresizingMaskIntoConstraints = false
    buttonE.topAnchor.constraint(equalTo: buttonD.bottomAnchor, constant: 10).isActive = true
    buttonE.leadingAnchor.constraint(equalTo: buttonD.leadingAnchor, constant: 10).isActive = true
    buttonE.trailingAnchor.constraint(equalTo: buttonD.trailingAnchor, constant: -10).isActive = true
    buttonE.centerXAnchor.constraint(equalTo: buttonD.centerXAnchor).isActive = true
    buttonE.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
    
    buttonE.setTitle("E", for: .normal)
    buttonE.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonE.backgroundColor = .systemYellow
    buttonE.layer.cornerRadius = 20
    buttonE.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupFButton() {
    view.addSubview(buttonF)
    
    buttonF.translatesAutoresizingMaskIntoConstraints = false
    buttonF.topAnchor.constraint(equalTo: buttonE.bottomAnchor, constant: 10).isActive = true
    buttonF.leadingAnchor.constraint(equalTo: buttonE.leadingAnchor, constant: 10).isActive = true
    buttonF.trailingAnchor.constraint(equalTo: buttonE.trailingAnchor, constant: -10).isActive = true
    buttonF.centerXAnchor.constraint(equalTo: buttonE.centerXAnchor).isActive = true
    buttonF.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
    
    buttonF.setTitle("F", for: .normal)
    buttonF.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonF.backgroundColor = .systemGreen
    buttonF.layer.cornerRadius = 20
    buttonF.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupGButton() {
    view.addSubview(buttonG)
    
    buttonG.translatesAutoresizingMaskIntoConstraints = false
    buttonG.topAnchor.constraint(equalTo: buttonF.bottomAnchor, constant: 10).isActive = true
    buttonG.leadingAnchor.constraint(equalTo: buttonF.leadingAnchor, constant: 10).isActive = true
    buttonG.trailingAnchor.constraint(equalTo: buttonF.trailingAnchor, constant: -10).isActive = true
    buttonG.centerXAnchor.constraint(equalTo: buttonF.centerXAnchor).isActive = true
    buttonG.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
    
    buttonG.setTitle("G", for: .normal)
    buttonG.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonG.backgroundColor = .systemTeal
    buttonG.layer.cornerRadius = 20
    buttonG.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupAButton() {
    view.addSubview(buttonA)
    
    buttonA.translatesAutoresizingMaskIntoConstraints = false
    buttonA.topAnchor.constraint(equalTo: buttonG.bottomAnchor, constant: 10).isActive = true
    buttonA.leadingAnchor.constraint(equalTo: buttonG.leadingAnchor, constant: 10).isActive = true
    buttonA.trailingAnchor.constraint(equalTo: buttonG.trailingAnchor, constant: -10).isActive = true
    buttonA.centerXAnchor.constraint(equalTo: buttonG.centerXAnchor).isActive = true
    buttonA.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
    
    buttonA.setTitle("A", for: .normal)
    buttonA.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonA.backgroundColor = .systemBlue
    buttonA.layer.cornerRadius = 20
    buttonA.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  func setupBButton() {
    view.addSubview(buttonB)
    
    buttonB.translatesAutoresizingMaskIntoConstraints = false
    buttonB.topAnchor.constraint(equalTo: buttonA.bottomAnchor, constant: 10).isActive = true
    buttonB.leadingAnchor.constraint(equalTo: buttonA.leadingAnchor, constant: 10).isActive = true
    buttonB.trailingAnchor.constraint(equalTo: buttonA.trailingAnchor, constant: -10).isActive = true
    buttonB.centerXAnchor.constraint(equalTo: buttonA.centerXAnchor).isActive = true
    buttonB.heightAnchor.constraint(equalToConstant: safeArea.layoutFrame.height / 7 - 20).isActive = true
//    buttonB.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: 10).isActive = true
    
    buttonB.setTitle("B", for: .normal)
    buttonB.titleLabel?.font = UIFont.systemFont(ofSize: 40)
    buttonB.backgroundColor = .systemPurple
    buttonB.layer.cornerRadius = 20
    buttonB.addTarget(self, action: #selector(playSound(sender:)), for: .touchUpInside)
  }
  
  // затолкать все это дело в отдельный view и от него отталкиваться
}
