//
//  ViewController.swift
//  GuitarChords
//
//  Created by David Seitz Jr on 10/12/16.
//  Copyright © 2016 David Seitz Jr. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController, UIGestureRecognizerDelegate {

    // MARK: - Properties 

    override var prefersStatusBarHidden: Bool {
        return true
    }

    // MARK: - IBOutlets

    @IBOutlet weak var getStartedButton: UIButton!
    @IBOutlet weak var authorLabel: UILabel!

    // MARK: - View Lifecycle

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.setupUI()
    }

    // MARK: - IBActions

    @IBAction func startButtonTouchDown(_ sender: AnyObject) {
        self.getStartedButton.backgroundColor = GCHColor.darkBrown
    }

    @IBAction func startButtonPressed(_ sender: AnyObject) {

        self.getStartedButton.backgroundColor = GCHColor.buttonColor

        self.performSegue(withIdentifier: SegueIdentifier.selectionViewController, sender: nil)
    }

    // MARK: - Convenience Methods

    private func setupUI() {

        self.view.backgroundColor = GCHColor.backgroundColor

        self.getStartedButton.backgroundColor = GCHColor.buttonColor
        self.getStartedButton.setTitleColor(GCHColor.backgroundColor, for: .normal)
        self.getStartedButton.roundCorners()

        self.authorLabel.text = "Made by David Seitz Jr"
        self.authorLabel.textColor = GCHColor.buttonColor

        // Enable swiping back to previous view.

        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
}
