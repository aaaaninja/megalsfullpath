mega_ls_results = `mega-ls /ebooks/`.split "\n"

p mega_ls_results.map
                 .with_index { |v, i| v.include?("\t") ? nil : i }
                 .compact
                 .each_cons(2)
                 .map { |s_idx, e_idx| mega_ls_results[s_idx...e_idx] }
