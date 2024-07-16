class Question {
   int id,answer;
   String question;
   List<String> options;

  Question({  required this.id,  required this.question,  required this.answer, required this.options});
}

 const List sample_data = [
  {
    "id":1,
    "question": "Who is the first prime minister of India ?",
    "options": ['Dr. BR Ambedkar','Jawaharlal Nehru','Sardar Vallabhai Patel','Subhash Chandra Bose'],
    "answer_index": 1,
  },
   {
     "id":2,
     "question": "_________ is known as the Silicon Valley of India ",
     "options": ['Bangalore','Mumbai','Delhi','Chennai'],
     "answer_index": 0,
   },
   {
     "id":3,
     "question": "What is the longest river in the world ? ",
     "options": ['Amazon River','Ganga','Mississippi River','Nile'],
     "answer_index": 3,
   },
   {
     "id":4,
     "question": "Who was the first President of the USA ?",
     "options": ['Abraham Lincoln','George Washington','John Tyler','John F. Kennedy'],
     "answer_index": 1,
   },
   {
     "id":5,
     "question": "Which is the national sport of India ?",
     "options": ['Cricket','Football','Hockey','Kabaddi'],
     "answer_index": 2,
   }
];