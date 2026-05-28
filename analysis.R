# Eswatini Debt Analysis Project

# install.packages("readxl")
# install.packages("tidyverse)

# library(readxl)

# debt_data <- read_excel("Eswatini.xlsx")

# head(debt_data)
# str(debt_data)
# summary(debt_data)
# colnames(debt_data)

# library(tidyverse)

# debt_data <- debt_data %>%
#   drop_na()


# head(debt_long)

# colnames(debt_data)[1] <- "Indicator"
# debt_data <- debt_data[-c(1,2),]

# head(debt_data)

# debt_long <- debt_data %>%
#   pivot_longer(
#     cols = -Indicator,
#     names_to = "Year",
#     values_to = "Debt_Value")

# head(debt_long)

# debt_long <- debt_long %>%
#   filter(!is.na(Debt_Value))

# unique(debt_long$Indicator)

# total_debt$Year <- as.numeric(total_debt$Year)
# str(total_debt)

# total_debt$Debt_Value <- as.numeric(gsub(",", "", total_debt$Debt_Value))
# total_debt <- total_debt[!is.na(total_debt$Debt_Value),]

# head(total_debt)

#long_term_debt <- debt_long %>% filter(Indicator == "Long-term external debt")

# head(long_term_debt)
# nrow(long_term_debt)

# str(long_term_debt)
# long_term_debt$Year <- as.numeric(long_term_debt$Year)

# long_term_debt <- long_term_debt[!is.na(long_term_debt$Debt_Value),]

# ggplot(long_term_debt, aes(x = Year, y = Debt_Value, group = 1)) +
#   geom_line() +
#   geom_point() +
#   labs(
#     title = "Eswatini Long-term External Debt (2014-2023)",
#     x = "Year",
#     y = "Debt Value (USD millions)")

# debt <- debt_long %>% filter(Indicator == "Long-term external debt")
# gni <- debt_long %>% filter(Indicator == "Gross national income)

# combined <- merge(debt,gni, by = "Year", suffixes = c("_debt", "_gni"))

# combined$debt_to_gni <- combined$Debt_Value_debt/ combined$Debt_Value_gni * 100

# str(combined)

# combined$Debt_Value_debt <- as.numeric(gsub(",", "", combined$Debt_Value_debt))
# combined$Debt_Value_gni <- as.numeric(gsub(",", "", combined$Debt_Value_gni))

#summary(combined$Debt_Value_debt)
#summary(combined$Debt_Value_gni)

# combined <- combined[!is.na(combined$Debt_Value_debt) & !is.na(combined$Debt_Value_gni),]

# combined$debt_to_gni <- (combined$Debt_Value_debt / combined$Debt_Value_gni) * 100

# head(combined)

# library(ggplot2)

# ggplot(combined, aes(x = Year, y = debt_to_gni, group = 1)) +
#   geom_line() +
#   geom_point() +
#   labs(
#     title = "Long-term External Debt as % of GNI (Eswatini)",
#     x = "Year",
#     y = "Debt-to-GNI (%)")


)

)