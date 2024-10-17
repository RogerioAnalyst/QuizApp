//
//  Untitled.swift
//  Quizzler-iOS13
//
//  Created by Rogerio Cardoso Filho on 17/10/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

struct Quiz {
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(q: "Qual é o maior órgão do corpo humano?", a: ["Coração", "Pele", "Intestino Grosso"], correctAnswer: "Pele"),
        Question(q: "Cinco dólares valem quantos centavos?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "O que significam as letras no fuso horário GMT?", a: ["Tempo Global Meridian", "Tempo Médio de Greenwich", "Tempo Médio Geral"], correctAnswer: "Tempo Médio de Greenwich"),
        Question(q: "Qual é a palavra francesa para 'chapéu'?", a: ["Chapéu", "Cachecol", "Gorro"], correctAnswer: "Chapéu"),
        Question(q: "Em tempos passados, o que um cavalheiro guardaria em seu bolso fob?", a: ["Caderno", "Lenço", "Relógio"], correctAnswer: "Relógio"),
        Question(q: "Como se diz adeus em espanhol?", a: ["Au Revoir", "Adiós", "Sair"], correctAnswer: "Adiós"),
        Question(q: "Qual dessas cores NÃO está presente no logotipo do Google?", a: ["Verde", "Laranja", "Azul"], correctAnswer: "Laranja"),
        Question(q: "Qual bebida alcoólica é feita de melaço?", a: ["Rum", "Uísque", "Gin"], correctAnswer: "Rum"),
        Question(q: "Que tipo de animal era Harambe?", a: ["Panda", "Gorila", "Crocodilo"], correctAnswer: "Gorila"),
        Question(q: "Onde fica a Tasmânia?", a: ["Indonésia", "Austrália", "Escócia"], correctAnswer: "Austrália")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getButtonTitle(buttonIndex: Int) -> String {
        return quiz[questionNumber].answer[buttonIndex]
    }
    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}
