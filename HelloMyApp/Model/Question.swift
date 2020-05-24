//
//  Question.swift
//  HelloMyApp
//
//  Created by Phong Toan Huu on 5/24/20.
//  Copyright © 2020 Phong Toan Huu. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
