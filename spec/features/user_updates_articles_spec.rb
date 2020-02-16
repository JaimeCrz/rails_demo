require "rails_helper"
require "pry"

feature 'user can update articles' do

    before do
        create(:article, title: 'Remember to code!', content: 'Today I forgot to code')
        visit root_path
    end

    context 'User can successfully edite and article [Happy path]' do
        
        before do
            click_on "edit"
            fill_in "Title", with: "[Accomplished] Remember to code!"
            fill_in "Content", with: "This weekend I have code for 12 hours"
            click_on "Save your edit"
        end

        it 'Expected to have succesfully edit the message' do
            expect(page).to have_content "Article was successfully updated."
        end

        it 'user should see article changed' do
            expect(page).to have_content "[Accomplished] Remember to code!"
        end
    end

    context 'User deleted the title for the article' do
        before do
            click_on "edit"
            fill_in "Title", with: nil
            fill_in "Content", with: " This weekend I have code for 12 hours"
            click_on "Save your edit"
        end

        it 'The user should see an error that the title is missing' do
        expect(page).to have_content "Title can't be blank"
        end
    end
end