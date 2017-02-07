require 'rails_helper'

feature 'User edit card' do

  scenario 'successfully'do
      #setup
      card = Card.create(portuguese: 'Livro', english: 'Book')

      #exercicio
      visit root_path
      click_on 'Livro'
      click_on 'Editar'
      fill_in 'English', with: 'Book'
      click_on 'Atualizar'

      #validacao/expectativas
      expect(page).to have_content 'Book'

  end

end
