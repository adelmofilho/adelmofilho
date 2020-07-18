---
title: "R Notebook"
output: html_notebook
---

```{r}
reticulate::virtualenv_python(envname = "r-reticulate")
```

```{r}
py_run_file(file = "img_rot.py")
```

```{r}
library(animation)
imgs <- list.files(pattern="*.png")
saveVideo({
  for(img in imgs){
    im <- magick::image_read(img)
    plot(as.raster(im))
  }  
})
```

