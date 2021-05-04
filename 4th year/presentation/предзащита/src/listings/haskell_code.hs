is_http = (=="http://") . take 7
process_url =
  \url -> print (url ++ "\n" ++ get_url url)

(map process_url
     . filter is_http
     . split . read_file . open) "urls.txt"