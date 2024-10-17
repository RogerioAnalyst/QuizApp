//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Rogerio Cardoso Filho on 17/10/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
