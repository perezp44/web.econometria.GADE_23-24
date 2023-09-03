
#- cojo el post mas moderno (x fecha)
carpetas_de_posts <- fs::dir_ls(here::here("posts"), type = "directory")
carpeta <- carpetas_de_posts[length(carpetas_de_posts)] #- la ruta a la carpeta más moderna

img <-  magick::image_read(here::here( "imagenes", "uv.jpeg"))
img_resized <- img |> magick::image_scale("832x852!")

#- guardo la foto reescalada a 640x427
magick::image_write(img_resized, here::here("imagenes", "uv_resized.png"))
