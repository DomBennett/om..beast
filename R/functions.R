#' @name beast
#' @title beast
#' @description Run beast
#' @param ... Arguments
#' @example /examples/beast.R
#' @export
beast <- function(...) {
  arglist <- arglist_get(...)
  files_to_send <- filestosend_get(arglist = arglist)
  arglist <- arglist_parse(arglist = arglist)
  otsdr <- outsider_init(pkgnm = 'om..beast', cmd = 'beast', wd = getwd(),
                         arglist = arglist, files_to_send = files_to_send)
  # run the command
  run(otsdr)
}
