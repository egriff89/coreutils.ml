let print_null str = Printf.printf "%s%c" str '\000'

let print_env null =
  let env = Unix.environment () in
  if null
  then Array.iter (fun x -> print_null x) env
  else Array.iter (fun x -> Printf.printf "%s\n" x) env
;;
