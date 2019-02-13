#' @name beast
#' @title beast
#' @description Run beast
#' @param ... Arguments
#' @example /examples/example.R
#' @export
beast <- function(...) {
  arglist <- outsider:::.arglist_get(...)
  files_to_send <- outsider::.filestosend_get(arglist = arglist)
  arglist <- outsider::.arglist_parse(arglist = arglist)
  otsdr <- outsider::.outsider_init(repo = 'dombennett/om..beast',
                                    cmd = 'beast', wd = getwd(),
                                    arglist = arglist,
                                    files_to_send = files_to_send)
  # run the command
  outsider::.run(otsdr)
}
