defmodule Hangman do
  alias Hangman.Impl.Game
  alias Hangman.Type

  @opaque game :: Game.t()

  defdelegate new_game, to: Game

  @spec make_move(game, String.t()) :: {game, Type.tally()}
  defdelegate make_move(game, guess), to: Game

  defdelegate tally(game), to: Game
end
