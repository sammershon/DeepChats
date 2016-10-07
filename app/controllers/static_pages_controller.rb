class StaticPagesController < ApplicationController
  def home
    quotes_array = ["'The fact that everybody in the world dreams every night ties all mankind together.'  -Jack Kerouac", "'Trying to define yourself is like trying to bite your own teeth.'  -Alan Watts",
                    "'Technology is destructive only in the hands of people who do not realize that they are one and the same process as the universe.'  -Alan Watts", "'You are precisely as big as what you love and precisely as small as what you allow to annoy you.'  -Robert Anton Wilson",
                    "Only the madman is absolutely sure.  -Robert Anton Wilson", "'A secret is not something untold. It’s something which can’t be told.'  -Terence McKenna", "The flame that burns Twice as bright burns half as long.  -Lao Tzu",
                    "'The surest way to corrupt a youth is to instruct him to hold in higher esteem those who think alike than those who think differently.'  -Friedrich Nietsche", "Don't walk behind me; I may not lead. Don't walk in front of me; I may not follow. Just walk beside me and be my friend. -Albert Camus",
                    "'Blessed are the hearts that can bend; they shall never be broken' -Albert Camus", "'Reality is only a Rorschach ink-blot, you know.' -Alan Watts", "'Your task is not to seek for love, but merely to seek and find all the barriers within yourself that you have built against it.'  -Rumi",
                    "'Even After All this time The Sun never says to the Earth, 'You owe me.' Look What happens With a love like that, It lights the whole sky.' -Hafez", "'Metaphysics is a dark ocean without shores or lighthouse, strewn with many a philosophic wreck'  -Immanuel Kant",
                    "'Man is condemned to be free'  -Jean-Paul Sartre", "'Freedom is secured not by the fulfilling of one's desires, but by the removal of desire'  -Epicetus", "'Everything that exists is born for no reason, carries on living through weakness, and dies by accident'  -Jean-Paul Sartre",
                    "'I would never die for my beliefs because I might be wrong'  -Bertrand Russel", "'We are what we repeatedly do. Excellence, then, is not an act, but a habit' -Aristotle", "'He who thinks great thoughts, often makes great errors'  -Martin Heidegger"]

    @thought = quotes_array.sample
  end

  def about
  end
end
