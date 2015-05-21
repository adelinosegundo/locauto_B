Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Rent))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Rent))==(Machine(Rent));
  Level(Machine(Rent))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Rent)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Rent))==(Boolean,Category,Time,Price,Damage,ClientsCTX,VehiclesCTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Rent))==(Client,Vehicle)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Rent))==(Penalty);
  List_Includes(Machine(Rent))==(Penalty)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Rent))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Rent))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Rent))==(clients,vehicles);
  Context_List_Variables(Machine(Rent))==(clients,vehicles);
  Abstract_List_Variables(Machine(Rent))==(?);
  Local_List_Variables(Machine(Rent))==(return_date,rents);
  List_Variables(Machine(Rent))==(return_date,rents,penalty);
  External_List_Variables(Machine(Rent))==(return_date,rents,penalty)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Rent))==(?);
  Abstract_List_VisibleVariables(Machine(Rent))==(?);
  External_List_VisibleVariables(Machine(Rent))==(?);
  Expanded_List_VisibleVariables(Machine(Rent))==(?);
  List_VisibleVariables(Machine(Rent))==(?);
  Internal_List_VisibleVariables(Machine(Rent))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Rent))==(btrue);
  Gluing_List_Invariant(Machine(Rent))==(rents: clients >+> vehicles);
  Abstract_List_Invariant(Machine(Rent))==(btrue);
  Expanded_List_Invariant(Machine(Rent))==(penalty: CLIENTS_ST +-> NAT);
  Context_List_Invariant(Machine(Rent))==(category: VEHICLES_ST +-> CATEGORIES_ST & time: NAT & damage_price: DAMAGES_ST +-> NAT & price: CATEGORIES_ST +-> NAT1 & delay_price: CATEGORIES_ST +-> NAT1 & damages: VEHICLES_ST --> DAMAGES_ST & clients <: CLIENTS_ST & vehicles <: VEHICLES_ST);
  List_Invariant(Machine(Rent))==(return_date: ran(rents) --> NAT1)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Rent))==(btrue);
  Expanded_List_Assertions(Machine(Rent))==(btrue);
  Context_List_Assertions(Machine(Rent))==(btrue);
  List_Assertions(Machine(Rent))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Rent))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Rent))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Rent))==(penalty:=CLIENTS_ST*{0};rents,return_date:={},{});
  Context_List_Initialisation(Machine(Rent))==(clients:={};vehicles:={});
  List_Initialisation(Machine(Rent))==(rents,return_date:={},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Rent))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Rent),Machine(Client))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Vehicle))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Penalty))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Category))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Time))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Price))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(Damage))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(ClientsCTX))==(?);
  List_Instanciated_Parameters(Machine(Rent),Machine(VehiclesCTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Rent),Machine(Penalty))==(btrue);
  List_Context_Constraints(Machine(Rent))==(btrue);
  List_Constraints(Machine(Rent))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Rent))==(rent,return,query_rents,query_rented,query_renter);
  List_Operations(Machine(Rent))==(rent,return,query_rents,query_rented,query_renter)
END
&
THEORY ListInputX IS
  List_Input(Machine(Rent),rent)==(cc,vv,rd);
  List_Input(Machine(Rent),return)==(cc);
  List_Input(Machine(Rent),query_rents)==(cc,vv);
  List_Input(Machine(Rent),query_rented)==(vv);
  List_Input(Machine(Rent),query_renter)==(cc)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Rent),rent)==(rr);
  List_Output(Machine(Rent),return)==(rr,rp);
  List_Output(Machine(Rent),query_rents)==(qq);
  List_Output(Machine(Rent),query_rented)==(qq);
  List_Output(Machine(Rent),query_renter)==(qq)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Rent),rent)==(rr <-- rent(cc,vv,rd));
  List_Header(Machine(Rent),return)==(rr,rp <-- return(cc));
  List_Header(Machine(Rent),query_rents)==(qq <-- query_rents(cc,vv));
  List_Header(Machine(Rent),query_rented)==(qq <-- query_rented(vv));
  List_Header(Machine(Rent),query_renter)==(qq <-- query_renter(cc))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Rent),rent)==(vv: VEHICLES_ST & cc: CLIENTS_ST & rd: NAT1 & rd>time);
  List_Precondition(Machine(Rent),return)==(cc: CLIENTS_ST);
  List_Precondition(Machine(Rent),query_rents)==(cc: CLIENTS_ST & vv: VEHICLES_ST);
  List_Precondition(Machine(Rent),query_rented)==(vv: VEHICLES_ST);
  List_Precondition(Machine(Rent),query_renter)==(cc: CLIENTS_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Rent),query_renter)==(cc: CLIENTS_ST | cc: dom(rents) ==> qq:=true [] not(cc: dom(rents)) ==> qq:=false);
  Expanded_List_Substitution(Machine(Rent),query_rented)==(vv: VEHICLES_ST | vv: ran(rents) ==> qq:=true [] not(vv: ran(rents)) ==> qq:=false);
  Expanded_List_Substitution(Machine(Rent),query_rents)==(cc: CLIENTS_ST & vv: VEHICLES_ST | cc: dom(rents) & vv: ran(rents) & rents(cc) = vv ==> qq:=true [] not(cc: dom(rents) & vv: ran(rents) & rents(cc) = vv) ==> qq:=false);
  Expanded_List_Substitution(Machine(Rent),return)==(cc: CLIENTS_ST | cc: dom(rents) ==> (return_date(rents(cc))<time ==> (cc: CLIENTS_ST & damage_price(damages(rents(cc))): NAT & time-return_date(rents(cc))*delay_price(category(rents(cc))): NAT | rents,return_date:={cc}<<|rents,{}<<|return_date || (damage_price(damages(rents(cc)))+(time-return_date(rents(cc))*delay_price(category(rents(cc))))>0 ==> penalty,rp:=penalty<+{cc|->damage_price(damages(rents(cc)))+(time-return_date(rents(cc))*delay_price(category(rents(cc))))},true [] not(damage_price(damages(rents(cc)))+(time-return_date(rents(cc))*delay_price(category(rents(cc))))>0) ==> rp:=false) || rr:=true) [] not(return_date(rents(cc))<time) ==> (cc: CLIENTS_ST & damage_price(damages(rents(cc))): NAT & 0: NAT | rents,return_date:={cc}<<|rents,{rents(cc)}<<|return_date || (damage_price(damages(rents(cc)))+0>0 ==> penalty,rp:=penalty<+{cc|->damage_price(damages(rents(cc)))+0},true [] not(damage_price(damages(rents(cc)))+0>0) ==> rp:=false) || rr:=true)) [] not(cc: dom(rents)) ==> rr,rp:=false,false);
  Expanded_List_Substitution(Machine(Rent),rent)==(vv: VEHICLES_ST & cc: CLIENTS_ST & rd: NAT1 & rd>time | vv: vehicles & cc: clients & cc/:dom(rents) & vv/:ran(rents) & penalty(cc) = 0 ==> rents,return_date,rr:=rents<+{cc|->vv},return_date<+{vv|->rd},true [] not(vv: vehicles & cc: clients & cc/:dom(rents) & vv/:ran(rents) & penalty(cc) = 0) ==> rr:=false);
  List_Substitution(Machine(Rent),rent)==(IF vv: vehicles & cc: clients & cc/:dom(rents) & vv/:ran(rents) & penalty(cc) = 0 THEN rents(cc):=vv || return_date(vv):=rd || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Rent),return)==(IF cc: dom(rents) THEN IF return_date(rents(cc))<time THEN rents:={cc}<<|rents || return_date:={}<<|return_date || rp <-- apply_penalty(cc,damage_price(damages(rents(cc))),time-return_date(rents(cc))*delay_price(category(rents(cc)))) || rr:=true ELSE rents:={cc}<<|rents || return_date:={rents(cc)}<<|return_date || rp <-- apply_penalty(cc,damage_price(damages(rents(cc))),0) || rr:=true END ELSE rr:=false || rp:=false END);
  List_Substitution(Machine(Rent),query_rents)==(IF cc: dom(rents) & vv: ran(rents) & rents(cc) = vv THEN qq:=true ELSE qq:=false END);
  List_Substitution(Machine(Rent),query_rented)==(IF vv: ran(rents) THEN qq:=true ELSE qq:=false END);
  List_Substitution(Machine(Rent),query_renter)==(IF cc: dom(rents) THEN qq:=true ELSE qq:=false END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Rent))==(?);
  Inherited_List_Constants(Machine(Rent))==(?);
  List_Constants(Machine(Rent))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Rent),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Rent))==(BOOL_RESPONSE);
  Context_List_Defered(Machine(Rent))==(CLIENTS_ST,VEHICLES_ST);
  Context_List_Sets(Machine(Rent))==(BOOL_RESPONSE,CLIENTS_ST,VEHICLES_ST);
  List_Valuable_Sets(Machine(Rent))==(?);
  Inherited_List_Enumerated(Machine(Rent))==(?);
  Inherited_List_Defered(Machine(Rent))==(?);
  Inherited_List_Sets(Machine(Rent))==(?);
  List_Enumerated(Machine(Rent))==(?);
  List_Defered(Machine(Rent))==(?);
  List_Sets(Machine(Rent))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Rent))==(?);
  Expanded_List_HiddenConstants(Machine(Rent))==(?);
  List_HiddenConstants(Machine(Rent))==(?);
  External_List_HiddenConstants(Machine(Rent))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Rent))==(btrue);
  Context_List_Properties(Machine(Rent))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & CLIENTS_ST: FIN(INTEGER) & not(CLIENTS_ST = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}));
  Inherited_List_Properties(Machine(Rent))==(btrue);
  List_Properties(Machine(Rent))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Rent),Machine(VehiclesCTX))==(?);
  Seen_Context_List_Invariant(Machine(Rent))==(damages: VEHICLES_ST --> DAMAGES_ST);
  Seen_Context_List_Enumerated(Machine(Rent))==(BOOL_RESPONSE,CATEGORIES_ST,DAMAGES_ST);
  Seen_Context_List_Invariant(Machine(Rent))==(damage_price: DAMAGES_ST +-> NAT & price: CATEGORIES_ST +-> NAT1 & delay_price: CATEGORIES_ST +-> NAT1);
  Seen_Context_List_Assertions(Machine(Rent))==(btrue);
  Seen_Context_List_Properties(Machine(Rent))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}) & CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}) & DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}));
  Seen_List_Constraints(Machine(Rent))==(btrue);
  Seen_List_Operations(Machine(Rent),Machine(VehiclesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(VehiclesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Rent),Machine(ClientsCTX))==(?);
  Seen_List_Operations(Machine(Rent),Machine(ClientsCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(ClientsCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Rent),Machine(Damage))==(apply_damage,fix_damage);
  Seen_List_Precondition(Machine(Rent),fix_damage)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),fix_damage)==(damages(vv)/=no_damage ==> damages,rr:=damages<+{vv|->no_damage},true [] not(damages(vv)/=no_damage) ==> rr:=false);
  Seen_List_Precondition(Machine(Rent),apply_damage)==(dd: DAMAGES_ST & dd/=no_damage & vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),apply_damage)==(damages:=damages<+{vv|->dd});
  Seen_List_Operations(Machine(Rent),Machine(Damage))==(apply_damage,fix_damage);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(Damage))==(btrue);
  Seen_Internal_List_Operations(Machine(Rent),Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price);
  Seen_List_Precondition(Machine(Rent),query_price)==(cc: CATEGORIES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),query_price)==(pp:=price(cc));
  Seen_List_Precondition(Machine(Rent),set_price)==(cc: CATEGORIES_ST & pp: NAT1 & dly: NAT1);
  Seen_Expanded_List_Substitution(Machine(Rent),set_price)==(price,delay_price:=price<+{cc|->pp},delay_price<+{cc|->dly});
  Seen_List_Precondition(Machine(Rent),query_damage_price)==(dd: DAMAGES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),query_damage_price)==(dd: dom(damage_price) ==> qq,rr:=damage_price(dd),true [] not(dd: dom(damage_price)) ==> (@(qq$0).(qq$0: NAT ==> qq:=qq$0) || rr:=false));
  Seen_List_Precondition(Machine(Rent),query_damage_penalty)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),query_damage_penalty)==(qq:=damage_price(damages(vv)));
  Seen_List_Precondition(Machine(Rent),set_damage_price)==(dd: DAMAGES_ST & pp: NAT);
  Seen_Expanded_List_Substitution(Machine(Rent),set_damage_price)==(damage_price:=damage_price<+{dd|->pp});
  Seen_List_Operations(Machine(Rent),Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(Price))==(btrue);
  Set_Definition(Machine(Rent),DAMAGES_ST)==({light,moderate,heavy,no_damage});
  Seen_Internal_List_Operations(Machine(Rent),Machine(Time))==(pass_time,query_time,query_delay);
  Seen_List_Precondition(Machine(Rent),query_delay)==(tt: NAT);
  Seen_Expanded_List_Substitution(Machine(Rent),query_delay)==(tt>time ==> qq:=0 [] not(tt>time) ==> qq:=tt-time);
  Seen_List_Precondition(Machine(Rent),query_time)==(1 = 1);
  Seen_Expanded_List_Substitution(Machine(Rent),query_time)==(qq:=time);
  Seen_List_Precondition(Machine(Rent),pass_time)==(1 = 1);
  Seen_Expanded_List_Substitution(Machine(Rent),pass_time)==(time:=time+1);
  Seen_List_Operations(Machine(Rent),Machine(Time))==(pass_time,query_time,query_delay);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(Time))==(btrue);
  Seen_Internal_List_Operations(Machine(Rent),Machine(Category))==(set_category,query_category);
  Seen_List_Precondition(Machine(Rent),query_category)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Rent),query_category)==(vv: dom(category) ==> qq,rr:=category(vv),true [] not(vv: dom(category)) ==> (@(qq$0).(qq$0: CATEGORIES_ST ==> qq:=qq$0) || rr:=false));
  Seen_List_Precondition(Machine(Rent),set_category)==(vv: VEHICLES_ST & cc: CATEGORIES_ST & cc: dom(price));
  Seen_Expanded_List_Substitution(Machine(Rent),set_category)==(category:=category<+{vv|->cc});
  Seen_List_Operations(Machine(Rent),Machine(Category))==(set_category,query_category);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(Category))==(btrue);
  Set_Definition(Machine(Rent),CATEGORIES_ST)==({car,motocycle,lux_car});
  Set_Definition(Machine(Rent),BOOL_RESPONSE)==({true,false});
  Seen_Internal_List_Operations(Machine(Rent),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Rent),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Rent),Machine(Boolean))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Rent),rent)==(?);
  List_ANY_Var(Machine(Rent),return)==(?);
  List_ANY_Var(Machine(Rent),query_rents)==(?);
  List_ANY_Var(Machine(Rent),query_rented)==(?);
  List_ANY_Var(Machine(Rent),query_renter)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Rent)) == (? | ? | return_date,rents | penalty | rent,return,query_rents,query_rented,query_renter | ? | seen(Machine(Boolean)),seen(Machine(Category)),seen(Machine(Time)),seen(Machine(Price)),seen(Machine(Damage)),seen(Machine(ClientsCTX)),seen(Machine(VehiclesCTX)),used(Machine(Client)),used(Machine(Vehicle)),included(Machine(Penalty)) | ? | Rent);
  List_Of_HiddenCst_Ids(Machine(Rent)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Rent)) == (?);
  List_Of_VisibleVar_Ids(Machine(Rent)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Rent)) == (seen(Machine(Boolean)): (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | ?) | seen(Machine(ClientsCTX)): (CLIENTS_ST | ? | ? | ? | ? | ? | ? | ? | ?));
  List_Of_Ids(Machine(Penalty)) == (? | ? | penalty | ? | apply_penalty,query_penalty | ? | seen(Machine(Boolean)),seen(Machine(ClientsCTX)) | ? | Penalty);
  List_Of_HiddenCst_Ids(Machine(Penalty)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Penalty)) == (?);
  List_Of_VisibleVar_Ids(Machine(Penalty)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Penalty)) == (?: ?);
  List_Of_Ids(Machine(ClientsCTX)) == (CLIENTS_ST | ? | ? | ? | ? | ? | ? | ? | ClientsCTX);
  List_Of_HiddenCst_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(ClientsCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(ClientsCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(ClientsCTX)) == (?: ?);
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?);
  List_Of_Ids(Machine(Vehicle)) == (? | ? | vehicles | ? | add_vehicle,remove_vehicle,query_vehicle | ? | seen(Machine(Boolean)),seen(Machine(VehiclesCTX)),seen(Machine(Category)) | ? | Vehicle);
  List_Of_HiddenCst_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Vehicle)) == (?);
  List_Of_VisibleVar_Ids(Machine(Vehicle)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Vehicle)) == (?: ?);
  List_Of_Ids(Machine(Category)) == (? | ? | category | ? | set_category,query_category | ? | seen(Machine(Boolean)),seen(Machine(VehiclesCTX)),seen(Machine(CategoriesCTX)),seen(Machine(Price)) | ? | Category);
  List_Of_HiddenCst_Ids(Machine(Category)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Category)) == (?);
  List_Of_VisibleVar_Ids(Machine(Category)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Category)) == (?: ?);
  List_Of_Ids(Machine(Price)) == (? | ? | delay_price,price,damage_price | ? | set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price | ? | seen(Machine(CategoriesCTX)),seen(Machine(DamagesCTX)),seen(Machine(Damage)),seen(Machine(Boolean)),seen(Machine(VehiclesCTX)) | ? | Price);
  List_Of_HiddenCst_Ids(Machine(Price)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Price)) == (?);
  List_Of_VisibleVar_Ids(Machine(Price)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Price)) == (?: ?);
  List_Of_Ids(Machine(VehiclesCTX)) == (VEHICLES_ST | ? | ? | ? | ? | ? | ? | ? | VehiclesCTX);
  List_Of_HiddenCst_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(VehiclesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(VehiclesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(VehiclesCTX)) == (?: ?);
  List_Of_Ids(Machine(Damage)) == (? | ? | damages | ? | apply_damage,fix_damage | ? | seen(Machine(DamagesCTX)),seen(Machine(VehiclesCTX)),seen(Machine(Boolean)) | ? | Damage);
  List_Of_HiddenCst_Ids(Machine(Damage)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Damage)) == (?);
  List_Of_VisibleVar_Ids(Machine(Damage)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Damage)) == (?: ?);
  List_Of_Ids(Machine(DamagesCTX)) == (DAMAGES_ST,light,moderate,heavy,no_damage | ? | ? | ? | ? | ? | ? | ? | DamagesCTX);
  List_Of_HiddenCst_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(DamagesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(DamagesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(DamagesCTX)) == (?: ?);
  List_Of_Ids(Machine(CategoriesCTX)) == (CATEGORIES_ST,car,motocycle,lux_car | ? | ? | ? | ? | ? | ? | ? | CategoriesCTX);
  List_Of_HiddenCst_Ids(Machine(CategoriesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CategoriesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(CategoriesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CategoriesCTX)) == (?: ?);
  List_Of_Ids(Machine(Client)) == (? | ? | clients | ? | add_client,remove_client,query_client | ? | seen(Machine(Boolean)),seen(Machine(ClientsCTX)) | ? | Client);
  List_Of_HiddenCst_Ids(Machine(Client)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Client)) == (?);
  List_Of_VisibleVar_Ids(Machine(Client)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Client)) == (?: ?);
  List_Of_Ids(Machine(Time)) == (? | ? | time | ? | pass_time,query_time,query_delay | ? | ? | ? | Time);
  List_Of_HiddenCst_Ids(Machine(Time)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Time)) == (?);
  List_Of_VisibleVar_Ids(Machine(Time)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Time)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Rent)) == (Type(penalty) == Mvl(SetOf(atype(CLIENTS_ST,?,?)*btype(INTEGER,?,?)));Type(return_date) == Mvl(SetOf(atype(VEHICLES_ST,?,?)*btype(INTEGER,1,MAXINT)));Type(rents) == Mvl(SetOf(atype(CLIENTS_ST,?,?)*atype(VEHICLES_ST,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Rent)) == (Type(query_renter) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?));Type(query_rented) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(query_rents) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)*atype(VEHICLES_ST,?,?));Type(return) == Cst(etype(BOOL_RESPONSE,?,?)*etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?));Type(rent) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)*atype(VEHICLES_ST,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Rent)) == (Type(query_renter) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?));Type(query_rented) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(query_rents) == Cst(etype(BOOL_RESPONSE,?,?),atype(CLIENTS_ST,?,?)*atype(VEHICLES_ST,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
