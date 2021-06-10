library(targets)
tar_option_set(
    library = .libPaths(),
    packages = c("tidyr")
)
list(tar_target(x, 1 + 1))
