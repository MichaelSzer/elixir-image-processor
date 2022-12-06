# compatible_with_server_protocol.ex
defprotocol CompatibleWithServer do
  @spec is_compatible(t()) :: String.t()
  def is_compatible(_type)
end

# compatiible_with_server_list
defimpl CompatibleWithServer, for: List do
  def is_compatible(_type), do: "List"
end

# compatible_with_server_bitstring
defimpl CompatibleWithServer, for: BitString do
  def is_compatible(_type), do: "BitString"
end

# compatible_with_server_integer
defimpl CompatibleWithServer, for: Integer do
  def is_compatible(_type), do: "Integer"
end
