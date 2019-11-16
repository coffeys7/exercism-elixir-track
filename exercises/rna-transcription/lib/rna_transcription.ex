defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.map(fn ch -> RnaTranscription.to_rna_char([ch]) end)
    |> Enum.concat
  end

  @doc """
  Swaps a single DNA character for its RNA complement
  """
  @spec to_rna_char(char) :: char
  def to_rna_char(ch) do
    ntide_map = %{
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    } |> Map.get(ch)
  end

end
