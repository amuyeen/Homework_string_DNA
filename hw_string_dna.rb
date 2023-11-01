def complement(dna)
  # Kiểm tra xem chuỗi DNA có hợp lệ hay không
  if dna.empty? || dna !~ /[ACGT]+/
    return 'Wrong DNA'
  end

  # Tạo một bảng tra cứu cho các cặp bổ sung
  complement_table = {
    'A' => 'T',
    'T' => 'A',
    'C' => 'G',
    'G' => 'C'
  }

  # Tạo một chuỗi DNA hoàn chỉnh
  complement_dna = dna.chars.map do |char|
    complement_table[char]
  end.join

  # Trả về chuỗi DNA hoàn chỉnh
  complement_dna
end