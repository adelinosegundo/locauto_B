MACHINE           Penalty

SEES              Damage, Price, Time, Rent

VARIABLES         total_price

INVARIANT         total_price : NAT

INITIALIZATION    total_price := 0

OPERATIONS

qq, rr <-- query_penalty(vv) =
  PRE 1=1
  THEN
    IF vv:ran(rents)
    THEN qq := (query_damage_price() + query_delay_price() + query_price(category(vv))) || rr:= true
    ELSE qq :: NAT || rr:= false
    END
  END

END

criar uma relaçao de veículo com damage pra poder descobrir o damage do veículo (inicializa o veículo com no_damage)
criar uma operação apply_damage para aplicar dano a um veículo
criar uma operação query_delay_price(cc) para descobrir o valor do delay pra uma categoria