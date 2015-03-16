
get_package_dirs <- function(filter = "", lib = pkg_paths()) {
  package <- as.character(filter)
  lib <- as.character(lib)

  dirs <- unlist(lapply(lib, dir, full.names = TRUE))

  if (filter != "") dirs <- dirs[grep(filter, basename(dirs))]
  
  drop_non_existant(dirs)
}

get_package_dir <- function(package, lib = pkg_paths()) {
  dir <- get_package_dirs(
    filter = paste0("^", escape_package_name(package), "$"),
    lib = lib
  )
  if (! length(dir)) dir <- NULL
  dir
}

get_package_rdss <- function(filter, lib = pkg_paths()) {
  dirs <- get_package_dirs(filter, lib)
  rds <- drop_non_existant(file.path(dirs, "Meta", "package.rds"))
  if (length(rds)) rds else NULL
}

get_package_rds <- function(package, lib = pkg_paths()) {
  get_package_rdss(
    filter = paste0("^", escape_package_name(package), "$"),
    lib = lib
  )
}
  
## Check installed version of a package
get_installed_version <- function(package) {
  rds <- get_package_rds(package)
  if (is.null(rds)) return(NULL)
  unname(read_package_rds(rds[1])[[1]]["Version"])
}