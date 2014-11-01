//
//  NewQuestionViewController.swift
//  undisclosed
//
//  Created by Clay Smith  on 11/1/14.
//  Copyright (c) 2014 Pepperland Labs. All rights reserved.
//

import Foundation
import UIKit

class NewQuestionViewController : UIViewController {

  @IBOutlet weak var questionTextView: UITextView!

  override func viewDidLoad() {
    questionTextView.becomeFirstResponder()
  }
}