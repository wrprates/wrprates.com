library(quarto)

# Copy and paste Disqus HTML to all posts
posts_folders <- list.dirs(path = "posts", recursive = FALSE)
file.copy("disqus.html", posts_folders, overwrite = TRUE)

# Render website
quarto::quarto_render()
