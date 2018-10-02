class CreateNewsletterTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletter_topics do |t|
      t.belongs_to :newsletter, index: true
      t.belongs_to :topic, index: true
      t.timestamps
    end
  end
end
