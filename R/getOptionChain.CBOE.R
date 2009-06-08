getOptionChain.CBOE <- function(Symbols, Exp, file=NULL)
{
  # file should be a connection or character string
  # pos.   Column Label    Column Name       Data Type      Description
  # 1      TRADE_DT        TRADE_DATE        yyyymmdd       The date the trades occurred on
  # 2      UNDLY           UNDERLYING_SYMBOL varchar(1-6)   The underly stock, index or financial instrument
  # 3      CLS             OPTION CLASS_SYM  varchar(1-3)   The option trading class symbol
  # 4      EXPR_DT         OPTION EXPIRATION_DATE  yyyymmdd The date the option expires
  # 5      STRK_PRC        OPTION EXERCISE_PRICE   decimal(8.3) The explicit dollar.cent strike price of the option.
  # 6      PC              PUT_CALL_CODE    char(1)         C or P
  # 7      OIT             OPEN_INT_QTY     integer(8)      The 'open-interest' in this series
  # 8      VOL             TOT_TRADE_VOL    integer(8)      The number of option 'contracts' traded in this series on this day.
  # 9      HIGH            HIGH_TRADE_PRICE decimal(7.2)    The highest trade price in this series on this day (null if no trades occurred).
  # 10     LOW             LOW_TRADE_PRICE  decimal(7.2)    The lowest trade price in this series on this day (null if no trades occurred).
  # 11     OPEN            OPEN_TRADE_PRICE decimal(7.2)    The trade price on the first trade in this series on this day (null if no trades occurred).
  # 12     LAST            LAST_TRADE_PRICE decimal(7.2)    The trade price on the last trade in this series on this day (null if no trades occurred).
  # 13     L_BID           LAST_BID_PRICE   decimal(7.2)    The bid price on the last quote in this series on this day.
  # 14     L_ASK           LAST_ASK_PRICE   decimal(7.2)    The ask price on the last quote in this series on this day.
  # 15     UNDL_PRC        UNDLY_INST_PRICE decimal(7.2)    The closing price on the associated underlying instrument on this day.
  # 16     S_TYPE          SERIES_TYPE      char(10)        Leap, non-Leap, Weekly
  # 17     P_TYPE          PRODUCT_TYPE     char(15)        Equity, Index, Interest Rate

  opt_data <- read.csv(file)
  return(opt_data)
}
