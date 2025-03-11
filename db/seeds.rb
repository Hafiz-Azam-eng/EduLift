UserAnswer.destroy_all
Option.destroy_all
Question.destroy_all

questions_data = [
  { text: "What is the capital of France?", options: [ "Paris", "Berlin", "Madrid", "Rome" ], correct_index: 0 },
  { text: "What is 2 + 2?", options: [ "3", "4", "5", "6" ], correct_index: 1 },
  { text: "Which is the largest planet in the solar system?", options: [ "Earth", "Mars", "Jupiter", "Venus" ], correct_index: 2 },
  { text: "What is the square root of 16?", options: [ "2", "4", "6", "8" ], correct_index: 1 },
  { text: "Who wrote 'Hamlet'?", options: [ "Charles Dickens", "William Shakespeare", "Mark Twain", "J.K. Rowling" ], correct_index: 1 },
  { text: "What is the boiling point of water at sea level?", options: [ "90°C", "100°C", "110°C", "120°C" ], correct_index: 1 },
  { text: "Which continent is the largest by land area?", options: [ "Africa", "Asia", "North America", "Europe" ], correct_index: 1 },
  { text: "What is the chemical symbol for gold?", options: [ "Ag", "Au", "Pb", "Fe" ], correct_index: 1 },
  { text: "Which animal is known as the 'King of the Jungle'?", options: [ "Tiger", "Elephant", "Lion", "Gorilla" ], correct_index: 2 },
  { text: "How many sides does a hexagon have?", options: [ "4", "5", "6", "7" ], correct_index: 2 }
]

# Create questions and options
questions_data.each do |q_data|
  question = Question.create!(text: q_data[:text])

  q_data[:options].each_with_index do |option_text, index|
    question.options.create!(
      text: option_text,
      correct: index == q_data[:correct_index] # Set correct option
    )
  end
end

puts "✅ Seeded 10 questions with options!"
