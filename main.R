library(quarto)

# Copy and paste Disqus HTML to all posts
posts_folders <- list.dirs(path = "posts", recursive = FALSE)

lapply(posts_folders, function(folder) {
  file.copy("disqus.html", folder, overwrite = TRUE)
})

# Render website
quarto::quarto_render()
