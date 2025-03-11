question = Question.create(text: "What is the capital of France?")
question.options.create([
  { text: "Berlin", correct: false },
  { text: "Madrid", correct: false },
  { text: "Paris", correct: true },
  { text: "Rome", correct: false }
])

puts "Sample question and options created!"
