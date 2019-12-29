#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#solution

# (a) profit for each month
profit <- revenue-expenses
profit

# (b) profit after tax - tax of 30%
?round
#tax <- round(0.30* revenue,2)
#tax
#final_revenue <- revenue - tax 
#final_revenue
tax <- round(0.30* profit,2)
profit_after_tax <- profit - tax
profit_after_tax

# (c) profit margin for each month (profit a after tax divided by revenue)
profit_margin <- round(profit_after_tax/revenue,2)
profit_margin
profit_margin_perc <- profit_margin*100
profit_margin_perc
#(d) good months - profit after tax greater than mean
mean_prof <- mean(profit_after_tax)
mean_prof

good_mon <- profit_after_tax > mean_prof
#good_mon <- rep(FALSE, length(profit_after_tax))
#for (i in length(profit_after_tax )){
#  if(profit_after_tax[i] > mean_prof) 
#    good_mon[i] <- TRUE
#}
good_mon

# (e) bad months - where profit was less than mean
bad_month <- !good_mon
bad_month

#(f) best month where profit was max 
best_mon <- profit_after_tax == max(profit_after_tax)
best_mon

#(d) worst month  
worst_mon <- profit_after_tax == min(profit_after_tax)
worst_mon


#Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses/1000, 0)
profit.1000 <- round(profit/1000,0)
profit.after.tax.1000 <- round(profit_after_tax/1000,0)

revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
