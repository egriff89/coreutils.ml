(*** whoami - print effective user name *)

let () =
  let username = Core_unix.username () in
  Printf.printf "%s\n" username
;;
