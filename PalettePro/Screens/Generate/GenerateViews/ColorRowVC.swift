//
//  ColorRowVC.swift
//  PalettePro
//
//  Created by Will Kitay on 5/21/23.
//

import UIKit

class ColorRowVC: UIViewController {
  
  let hexLabel = ColorRowLabel()
  let lockButton = ColorRowButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubviews(hexLabel, lockButton)
    generateRandomColor()
    configureLabel()
    configureLockButton()
  }
  
  func configureLabel() {
    hexLabel.textColor = getContrastTextColor(for: view.backgroundColor)
    
    NSLayoutConstraint.activate([
      hexLabel.topAnchor.constraint(equalTo: view.topAnchor),
      hexLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
      hexLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
      hexLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])
  }
  
  func configureLockButton() {    
    NSLayoutConstraint.activate([
      lockButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      lockButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
    ])
  }
  
  func generateRandomColor() {
    view.backgroundColor = .generateRandomColor()
    hexLabel.text = view.backgroundColor?.toHex() ?? "N/A"
    hexLabel.textColor = getContrastTextColor(for: view.backgroundColor)
  }
  
}