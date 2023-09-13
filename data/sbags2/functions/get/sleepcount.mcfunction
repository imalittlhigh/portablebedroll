##
 # sleepcount.mcfunction
 # 
 #
 # Created by .
##


execute if score sbags2.playercount sbags2.playercount <= sbags2.playercount sbags2.sleepcount if predicate sbags2:time/sleeping run schedule function sbags2:skip/night 3s
