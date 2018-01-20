//
//  ViewController.swift
//  Quiz
//
//  Created by Cole Burkhart on 1/10/18.
//  Copyright © 2018 Cole Burkhart. All rights reserved.
//  High Point University

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    let questions: [String] = [
       "What is 7+7?",
       "What is the capital of Vermont?",
       "What is cognac made from?"
    ]
    
    let answers: [String] = [
       "14",
       "Montpelier",
       "Grapes"
    ]
    
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        let questions: String = self.questions[currentQuestionIndex]
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        questionLabel.text = questions
        answerLabel.text = "???"    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
}

