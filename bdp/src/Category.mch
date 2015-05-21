MACHINE           Category

SEES              Boolean , VehiclesCTX , CategoriesCTX , Price

ABSTRACT_VARIABLES category

INVARIANT         category : VEHICLES_ST +-> CATEGORIES_ST

INITIALISATION    category := {}

OPERATIONS

set_category ( vv , cc ) =
  PRE vv : VEHICLES_ST & cc : CATEGORIES_ST & cc : dom ( price )
  THEN category ( vv ) := cc
  END ;

qq , rr <-- query_category ( vv ) =
  PRE vv : VEHICLES_ST
  THEN
    IF vv : dom ( category )
    THEN qq := category ( vv ) || rr := true
    ELSE qq :: CATEGORIES_ST || rr := false
    END
  END

END
