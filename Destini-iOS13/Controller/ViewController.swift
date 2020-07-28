//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateFunc(story: example[0])
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
    let userAnswer = sender.currentTitle!
        
        
        switch userAnswer {
        case example[0].choice1:
            updateFunc(story: example[2])
            break
        case example[0].choice2:
             updateFunc(story: example[1])
            break
        case example[2].choice1:
            updateFunc(story: example[5])
            break
        case example[2].choice2:
            updateFunc(story: example[4])
            break
        case example[1].choice1:
            updateFunc(story: example[2])
            break
        case example[1].choice2:
            updateFunc(story: example[3])
            break
        
        default:
            break
        }
       
        
    }
    
    func updateFunc(story: Story) {
        storyLabel.text  = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }

}

