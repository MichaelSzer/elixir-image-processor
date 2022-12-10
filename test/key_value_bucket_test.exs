defmodule KeyValueBucketTest do
  use ExUnit.Case, async: true
  doctest KeyValueBucket

  setup do
    {:ok, bucket} = KeyValueBucket.start_link(nil)
    %{bucket: bucket}
  end

  test "stores values by key", %{ bucket: bucket } do
    assert KeyValueBucket.get(bucket, "milk") == nil

    KeyValueBucket.put(bucket, "milk", 3)
    assert KeyValueBucket.get(bucket, "milk") == 3
  end
end
