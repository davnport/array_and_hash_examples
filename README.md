An example hiera file for `array_and_hash_examples::hiera_examples`

```
array_and_hash_examples::hiera_examples::array:
 - '1'
 - 'two'
 - '3'
 - 'four'
array_and_hash_examples::hiera_examples::hash:
 'one': '1'
 'two': '2'
array_and_hash_examples::hiera_examples::array_of_hashes:
 - 'hash1_key1': 'hash1_val_one'
   'hash1_key2': 'hash1_val_two'
 - 'hash2_key1': 'hash2_val_one'
   'hash2_key2': 'hash2_val_two'
array_and_hash_examples::hiera_examples::hash_of_hashes:
 'hash1':
  'inner_hash1_key1': '1'
 'hash2':
   'inner_hash2_key1': '2'
```
