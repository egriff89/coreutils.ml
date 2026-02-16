let uname = Core_unix.uname ()
let get_kernel_name = Core_unix.Utsname.sysname uname
let get_nodename = Core_unix.Utsname.nodename uname
let get_kernel_release = Core_unix.Utsname.release uname
let get_kernel_version = Core_unix.Utsname.version uname
let get_machine = Core_unix.Utsname.machine uname
let get_os = if Sys.unix then "GNU/Linux" else get_kernel_name

let get_all =
  Printf.sprintf
    "%s %s %s %s %s %s\n"
    get_kernel_name
    get_nodename
    get_kernel_release
    get_kernel_version
    get_machine
    get_os
;;

let print_result options =
  let selected =
    List.filter_map (fun (flag, getter) -> if flag then Some getter else None) options
  in
  let output =
    match selected with
    | [] -> get_kernel_name
    | getters -> String.concat " " getters
  in
  output
;;
