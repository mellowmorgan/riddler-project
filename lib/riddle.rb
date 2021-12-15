require 'pry'
class Riddle
  def initialize
    @@index = 0
    @@random_riddles = []
    @@riddles = [
      {
        "question" => "What gets wet while drying?",
        "answer" => "towel"
      },
      {
        "question" => "What disappears as soon as you say its name?",
        "answer" => "silence"
      },
      {
        "question" => "I have keys, but no locks and space, and no rooms. You can enter, but you can’t go outside. What am I?",
        "answer" => "keyboard"
      },
      {
        "question" => "What has many teeth but can’t bite?",
        "answer" => "comb"
      },
      {
        "question" => "What is so fragile that just saying its name breaks it?",
        "answer" => "silence"
      },
      {
        "question" => "What is black and white and read all over?",
        "answer" => "newspaper"
      },
      {
        "question" => "What is it that given one, you'll have either two or none?",
        "answer" => "choice"
      },
      {
        "question" => "I have no feet, no hands, no wings, but I climb to the sky. What am I?",
        "answer" => "smoke"
      },
      {
        "question" => "What walks on four feet in the morning, two in the afternoon, and three at night?" ,
        "answer" => "human"
      },
      {
        "question" => "Lighter than what I am made of, More of me is hidden Than is seen. What am I?",
        "answer" => "iceberg"
      },
      {
        "question" => "Has a tongue, but never talks. Has no legs, but sometimes walks…What is it?",
        "answer" => "shoe"
      },
      {
        "question" => "What must take a bow before it can speak?",
        "answer" => "violin"
      },
      {
        "question" => "I can only live where there is light, but I die if the light shines on me… What am I?",
        "answer" => "shadow"
      },
      {
        "question" => "I can be cracked, I can be made. I can be told, I can be played… What am I?",
        "answer" => "joke"
      },
      {
        "question" => "I can't be used unless I am broken… What am I?",
        "answer" => "egg"
      }
    ] 
  end
  def self.random
    @@random_riddles=@@riddles.shuffle().slice(0,5)
    @@random_riddles
  end  
  def self.random_riddles
    @@random_riddles
  end
  def self.index
    @@index
  end
  def self.index=(new_index)
    @@index=new_index
  end
end