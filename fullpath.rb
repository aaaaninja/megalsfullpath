mega_ls_results = `mega-ls /ebooks/`.split "\n"

p mega_ls_results.map
                 .with_index { |v, i| v.include?("\t") ? nil : i }
