//
//  Question.swift
//  PersonalQuiz
//
//  Created by ikorobov on 10.07.2022.
//

struct Question {
    let title: String
    let responseType: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                responseType: .single,
                answers: [
                    Answer(title:"Cтейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                responseType: .multiple,
                answers: [
                    Answer(title: "Дружить", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Спасаться бегством", animal: .rabbit),
                    Answer(title: "Не спешить", animal: .turtle)
                ]
            ),
            Question(
                title: "Любите езду на машине?",
                responseType: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                ]
            )
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    case horse = "🐴"
    
    var defenition: String {
        switch self {
            case .dog:
                return "Вас часто поминают в обращениях к РосКомНадзору"
            case .cat:
                return "Вы любимец интернетов и катализатор прокрастинации. Опциональный бонус - грация картошки"
            case .rabbit:
                return "Терновые кусты вам нипочем"
            case .turtle:
                return "Вы можете забраться на десятиметровый столб в среднем за десять дней.Ахиллес никогда не сможет вас обогнать"
            case .horse:
                return "На самом деле это автор - конь. А мог бы и через гард сделать 😔"
        }
    }
}

