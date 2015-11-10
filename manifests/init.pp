class array_and_hash_examples {

  $array = [ '1', 'two', 3, 'four' ]

  $hash = { 'one' => '1', 
            'two' => '2' }

  $array_of_hashes = [ { 'hash1_key1' => 'hash1_val_one', 'hash1_key2' => 'hash1_val_two' },
                       { 'hash2_key1' => 'hash2_val_one', 'hash2_key2' => 'hash2_val_two' } ]

  $hash_of_hashes = { 'hash1' => { 'inner_hash1_key1' => '1' }, 'hash2' => { 'inner_hash2_key1' => '2' } }

  notify { "array variable is:  ${array}" : } 
  notify { "hash variable is:  ${hash}" : }
  notify { "array_of_hashes variable is:  ${array_of_hashes}" : }
  notify { "hash_of_hashes variable is:  ${hash_of_hashes}" : }

  #access first hash in array_of_hashs
  $first_hash_in_array_of_hashes = $array_of_hashes[0]
  notify { "first_hash_in_array_of_hashes is: ${first_hash_in_array_of_hashes}" : }
  
  #access hash1_key1 in array_of_hashes 
  $hash1_key1 = $array_of_hashes[0]['hash1_key1']
  notify { "hash1_key1 is: ${$hash1_key1}" : }

  #access hash2
  $hash2 = $hash_of_hashes['hash2']

  #accessing inner_hash2_key1
  $inner_hash2_key1 = $hash_of_hashes['hash2']['inner_hash2_key1']

  notify { "hash2 is: ${hash2} " : }
  notify { "inner_hash2_key1 is: ${inner_hash2_key1}" : }
} 
