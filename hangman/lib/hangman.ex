defmodule Hangman do
  alias Hangman.Runtime.{Server, Application}
  alias Hangman.Type

  @opaque game :: Server.t()

  def new_game do
    {:ok, pid} = Application.start_game()
    pid
  end

  @spec make_move(game, String.t()) :: Type.tally()
  def make_move(game, guess) do
    GenServer.call(game, {:make_move, guess})
  end

  def tally(game) do
    GenServer.call(game, {:tally})
  end
end
