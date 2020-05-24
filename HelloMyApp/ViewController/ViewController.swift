//
//  ViewController.swift
//  HelloMyApp
//
//  Created by Phong Toan Huu on 5/17/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer = false
    var questionNumber : Int = 0
    var score : Int = 0

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }

    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        
        questionNumber = questionNumber + 1
        
        nextQuestion()
    }
    
    func updateUI(){
        
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questionNumber + 1) / 10"
        
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber + 1)
    }
    
    func nextQuestion(){
        if questionNumber <= 9 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else {
            let alert = UIAlertController(title: "Congratulation!", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {
                (UIAlertAction) in self.startOver()
            })
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            print("start over")
        }
        
    }
    
    func checkAnswer(){
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("You got it!")
            ProgressHUD.showSuccess("Correct")
            score = score + 1
        }
        else {
            ProgressHUD.showError("Wrong")
            print("Wrong")
        }
    }
    
    func startOver(){
        score = 0
        questionNumber = 0
        nextQuestion()
    }
}

