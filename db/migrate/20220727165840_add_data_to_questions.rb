class AddDataToQuestions < ActiveRecord::Migration[7.0]
  def change
    Question.create(
      [
        { content: '¿ Cual es tu nombre ?' },
        { content: '¿ De donde eres ?' },
        { content: '¿ Lenguaje favorito ?' }
      ]
    )
  end
end
