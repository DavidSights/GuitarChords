//
//  ChartViewController.swift
//  GuitarChords
//
//  Created by David Seitz Jr on 10/12/16.
//  Copyright © 2016 David Seitz Jr. All rights reserved.
//

import UIKit

class ChartViewController: UIViewController {

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }

    // MARK: - Convenience Methods

    private func setupUI() {
        self.view.backgroundColor = GCHColor.backgroundColor
    }
}
