defprotocol CompatibleWithServer do
  @spec is_compatible(t()) :: boolean()
  def is_compatible(_type)
end

defimpl CompatibleWithServer, for: String do
  def is_compatible(_type), do: true
end

defimpl CompatibleWithServer, for: List do
  def is_compatible(_type), do: true
end

defimpl CompatibleWithServer, for: BitString do
  def is_compatible(_type), do: false
end
