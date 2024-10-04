
protocol QuestionFactoryProtocol {
  func requestNextQuestion() -> QuizQuestion?
}

final class QuestionFactory {
  func requestNextQuestion() -> QuizQuestion? {
    guard let index = (0 ..< questions.count).randomElement() else { return nil }
    return questions[safe: index]
  }
}

extension QuestionFactory: QuestionFactoryProtocol {
  
}

private var questions: [QuizQuestion] = [
  QuizQuestion(image: "The Godfather", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "The Dark Knight", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "Kill Bill", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "The Avengers", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "Deadpool", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "The Green Knight", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "Old", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: true),
  QuizQuestion(image: "The Ice Age Adventures of Buck Wild", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: false),
  QuizQuestion(image: "Tesla", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: false),
  QuizQuestion(image: "Vivarium", text: "Рейтинг этого фильма больше чем 6?", correctAnswer: false),
]
