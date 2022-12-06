defprotocol Privilege do
  @fallback_to_any true
  @spec privilege(t()) :: integer()
  def privilege(_type)
end
