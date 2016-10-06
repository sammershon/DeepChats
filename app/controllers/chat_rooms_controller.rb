class ChatRoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @chat_rooms = ChatRoom.all.order(created_at: :desc)
  end

  def new
    @chat_room = ChatRoom.new

    question_array = ["Why is there something rather than nothing?", "Could we possibly be living in a computer simulation?", "What are colors?", "Is there progress in philosophy?", "Is science compatible with religion?",
                      "Is love just a feeling?", "What is the sound of one hand clapping?", "If the only thing I know is that I know nothing, do I know something?", "Is morality relative?", "Does truth exist?",
                      "If you could live forever, would you?", "If someone offered to tell you exactly what would happen in 20 years, but you would be powerless to change what they tell you, would you want to hear it?",
                      "Which would you rather be - an unhappy human being or a happy dog?", "Are emotions irrational?", "Is it always better to have more choices?", "What is art?", "Is democracy the same as decision by the majority?",
                      "Are numbers real? What is a number?", "Are there parallel universes?", "If you can travel back in time, can you kill your earlier self?", "Is time travel possible?", "Can we be absolutely certain of anything?",
                      "Is mathematics the same as logic?", "Does every event have a cause?", "Are you your body or your mind?", "Can wars ever be just?", "Are you the same person you were ten years ago?", "Why do we dream?",
                      "Can something be at two places at the same time?", "If you go back in time and teach young Einstein relativity theory, where does the idea come from?", "Does every event have a cause?", "How do you know you are not dreaming right now?",
                      "If we live in a computer simulation, does it make a difference to the meaning of life?", "If meat can be grown using stem cells, is there any reason not to eat meat?", "Is it the main purpose of law to promote morality?",
                      "What is friendship and why do we need it?", "If there is no freewill, should we punish people at all?", "Does freewill exist?"]

    @new_question = question_array.sample
  end

  def create
    @chat_room = current_user.chat_rooms.build(chat_room_params)
    if @chat_room.save
      flash[:success] = 'Chat room added!'
      redirect_to chat_rooms_path
    else
      render 'new'
    end
  end

  def show
    @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title, :question)
  end
end
