//
//  CenterViewController.swift
//  SlideOutNavigation
//
//  Created by James Frost on 03/08/2014.
//  Copyright (c) 2014 James Frost. All rights reserved.
//

import UIKit



class CenterViewController: UIViewController, SidePanelViewControllerDelegate {
  @IBOutlet weak private var imageView: UIImageView!
  @IBOutlet weak private var titleLabel: UILabel!
  @IBOutlet weak private var creatorLabel: UILabel!

  var delegate: CenterViewControllerDelegate?

  // MARK: Button actions

  @IBAction func kittiesTapped(sender: AnyObject) {
    delegate?.toggleLeftPanel?()
  }

  @IBAction func puppiesTapped(sender: AnyObject) {
    delegate?.toggleRightPanel?()
  }

  func animalSelected(animal: Animal) {
    imageView.image = animal.image
    titleLabel.text = animal.title
    creatorLabel.text = animal.creator

    delegate?.collapseSidePanels?()
  }
}