let get_kernel_name = Core_unix.uname () |> Core_unix.Utsname.sysname
let get_nodename = Core_unix.uname () |> Core_unix.Utsname.nodename
let get_kernel_release = Core_unix.uname () |> Core_unix.Utsname.release
let get_kernel_version = Core_unix.uname () |> Core_unix.Utsname.version
let get_machine = Core_unix.uname () |> Core_unix.Utsname.machine
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
