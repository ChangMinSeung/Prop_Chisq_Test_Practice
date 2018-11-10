ad <- matrix(data = c(124, 7056, 1.76,
                      141, 9678, 1.46),
             nrow = 2, ncol = 3, byrow = TRUE,
             dimnames = list(c("광고1", "광고2"),
                             c("Install", "Click", "Conversion_Rate")))

ad_sub <- ad[,1:2]

#prop.test(success or failure)
#귀무 가설 : 광고1과 광고2의 성과에는 차이가 없다.
#대립 가설 : 광고1과 광고2의 성과에는 차이가 있다.

prop.test(c(124,141), c(7056,9678), conf.level = 0.95)
prop.test(ad_sub, conf.level = 0.95)


#chisq.test(Chi-square test, 카이제곱 검정)
#두 변수 사이에 연관성이 있는지 확인

chisq.test(ad_sub)