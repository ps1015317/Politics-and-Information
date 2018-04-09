#practice R-facebook

library(httr)

url= "https://graph.facebook.com/v2.12/sujiachyuan?fields=posts&access_token=EAACEdEose0cBAEj39Se8fAPPQ9vsY7L91rWdDwKoo07qDNFAsAtZCqYmPwdEWyOb5YLW9BjoxkISv4UZCZCBACv7ybjOytNawQTYOAvWz0FNFZCLNxztCq1QBTZCXrBbjKQwDW3EFcc29FYlhRwupNCKMTJTZAoslC5BW46oyuy7nkZAX5AzQzikTqQcjpP0MUZD"
res = httr::GET(url)

post = content(res)
data = post$posts$data
from = data[[1]]$created_time
date = data[[from]]$created_time
#用from取代[1]才不會跟其他數字搞混
#strspilt (目標物,"要斷的地方")[第幾個][第幾項]
year = strsplit(date,"-")[[from]][1]
month = strsplit(date,"-")[[from]][2]

month


for (i in c(1:25)){
  date = data[[i]]$created_time
  month = strsplit(date,"-")[[1]][2]
  print(month)
  }


#if (month >= 03) {
  return(month, "March"))
} else if (month >= 02) {
  return(month, "February"))
} else if (month >= 01 ) {
  return(month, "January"))
} else if (month >= 12) {
  return(month, "Desember"))
} else if (month >= 11) {
  return(month, "November"))
} else {
  return(month, "其他"))
}  
}


if (month == "03"){
  print("三月")
} else if (month == "02"){
  print("二月")
} else if (month == "01") {
  print("一月")
} else if (month == "12") {
  print("十二月")  
} else {
  print("十一月")
}










date = 
write
