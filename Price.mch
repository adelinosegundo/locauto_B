MACHINE           Price

SEES              CategoriesCTX

VARIABLES         price, delay_price

INVARIANT         price : CATEGORIES_ST +-> NAT1 & delay_price : CATEGORIES_ST +-> NAT1

INITIALISATION    price, delay_price := {}, {}

OPERATIONS

set_price(cc,pp,dly) =
  PRE cc : CATEGORIES_ST & pp : NAT1 & dly:NAT1
  THEN price(cc) := pp||delay_price(cc):=dly
  END;

pp <-- query_price(cc) =
  PRE cc : CATEGORIES_ST THEN pp := price(cc) END

END
