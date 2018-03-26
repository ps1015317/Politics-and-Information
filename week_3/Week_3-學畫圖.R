#week4-視覺化爬到的csv檔案

#下載套件
install.packages("ggplot2")
#叫出套件
library(ggplot2)
mtcars
#ggplot套件名稱(mtcars資料庫, aes要的X軸和y軸(x=wt, y=mpg)) +要呈現的方式ex點狀圖 geom_point()
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()

#以血壓為例(點狀圖)
pressure
library(ggplot2)
ggplot(pressure, aes(x=temperature, y=pressure)) + geom_point()

#以空氣品質為例(直方圖)
airquality
install.packages(histogram)
hist(x=airquality$Month,
     main="Airquality of Month",
     xlab="Month",
     ylab="Frequency")

#繼續以空氣品質為例(點狀圖again)
ggplot(airquality, aes(x=Month, y=Day)) + geom_point()
ggplot(airquality, aes(x=Month, y=Temp)) + geom_point()




