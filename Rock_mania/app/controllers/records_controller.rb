class RecordsController < ApplicationController
def index
  @records = Record.all
end
def new
  @record = Record.new
  render :new
end
def create
  Record.create(record_params)
  redirect_to('/records')
end

private

def record_params
  params.require(:record).permit(:title, :artist, :year, :cover_art, :song_count)

end
end
