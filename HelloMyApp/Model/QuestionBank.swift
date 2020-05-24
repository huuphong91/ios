//
//  QuestionBank.swift
//  HelloMyApp
//
//  Created by Phong Toan Huu on 5/24/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init(){
        list.append(Question(text: "Hello! Am I handsome?", correctAnswer:  true))
        list.append(Question(text: "Nobody's perfect", correctAnswer:  true))
        list.append(Question(text: "Today is a beautiful but i can't see it", correctAnswer:  true))
        list.append(Question(text: "If you want to become a good developer, you must have university graduate", correctAnswer:  false))
        list.append(Question(text: "A slug\'s blood is green", correctAnswer:  true))
        list.append(Question(text: "You can lead a cow down stairs but not up stairs", correctAnswer:  false))
        list.append(Question(text: "It is illegal to pee in the Ocean in VietNam", correctAnswer:  true))
        list.append(Question(text: "The sky is the highest", correctAnswer:  false))
        list.append(Question(text: "Ha Noi is located in the south of Viet Nam", correctAnswer:  false))
        list.append(Question(text: "Coding is very hard", correctAnswer:  false))
    }
}
