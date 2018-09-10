library(magrittr)
x = c(1:10,50)
mean(x)
mean(x, trim = .1)
x %>% mean(trim = .1)

res = transform(aggregate(.~ cyl,
                          data = subset(mtcars, hp > 100, select = c("mpg","cyl")),
                          FUN = function(x) round(mean(x),2)), kpl = mpg*0.4251)

res

res = transform(aggregate(.~ cyl,
                          data = subset(mtcars, hp > 100, select = c("mpg","cyl")),
                          FUN = function(x) round(mean(x),2)), kpl = mpg*0.4251)


res1 = mtcars %>%
subset(hp > 100, select = c("mpg","cyl")) %>%
aggregate(.~ cyl, data = ., FUN = function(x) round(mean(x),2)) %>%
transform(.,kpl = mpg*0.4251)
  
