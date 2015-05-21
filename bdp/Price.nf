Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Price))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Price))==(Machine(Price));
  Level(Machine(Price))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Price)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Price))==(CategoriesCTX,DamagesCTX,Damage,Boolean,VehiclesCTX)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Price))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Price))==(?);
  List_Includes(Machine(Price))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Price))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Price))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Price))==(?);
  Context_List_Variables(Machine(Price))==(?);
  Abstract_List_Variables(Machine(Price))==(?);
  Local_List_Variables(Machine(Price))==(delay_price,price,damage_price);
  List_Variables(Machine(Price))==(delay_price,price,damage_price);
  External_List_Variables(Machine(Price))==(delay_price,price,damage_price)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Price))==(?);
  Abstract_List_VisibleVariables(Machine(Price))==(?);
  External_List_VisibleVariables(Machine(Price))==(?);
  Expanded_List_VisibleVariables(Machine(Price))==(?);
  List_VisibleVariables(Machine(Price))==(?);
  Internal_List_VisibleVariables(Machine(Price))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Price))==(btrue);
  Gluing_List_Invariant(Machine(Price))==(btrue);
  Expanded_List_Invariant(Machine(Price))==(btrue);
  Abstract_List_Invariant(Machine(Price))==(btrue);
  Context_List_Invariant(Machine(Price))==(damages: VEHICLES_ST --> DAMAGES_ST);
  List_Invariant(Machine(Price))==(damage_price: DAMAGES_ST +-> NAT & price: CATEGORIES_ST +-> NAT1 & delay_price: CATEGORIES_ST +-> NAT1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Price))==(btrue);
  Abstract_List_Assertions(Machine(Price))==(btrue);
  Context_List_Assertions(Machine(Price))==(btrue);
  List_Assertions(Machine(Price))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Price))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Price))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Price))==(damage_price,price,delay_price:={no_damage|->0},{},{});
  Context_List_Initialisation(Machine(Price))==(skip);
  List_Initialisation(Machine(Price))==(damage_price,price,delay_price:={no_damage|->0},{},{})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Price))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Price),Machine(CategoriesCTX))==(?);
  List_Instanciated_Parameters(Machine(Price),Machine(DamagesCTX))==(?);
  List_Instanciated_Parameters(Machine(Price),Machine(Damage))==(?);
  List_Instanciated_Parameters(Machine(Price),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Price),Machine(VehiclesCTX))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Price))==(btrue);
  List_Constraints(Machine(Price))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price);
  List_Operations(Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price)
END
&
THEORY ListInputX IS
  List_Input(Machine(Price),set_damage_price)==(dd,pp);
  List_Input(Machine(Price),query_damage_penalty)==(vv);
  List_Input(Machine(Price),query_damage_price)==(dd);
  List_Input(Machine(Price),set_price)==(cc,pp,dly);
  List_Input(Machine(Price),query_price)==(cc)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Price),set_damage_price)==(?);
  List_Output(Machine(Price),query_damage_penalty)==(qq);
  List_Output(Machine(Price),query_damage_price)==(qq,rr);
  List_Output(Machine(Price),set_price)==(?);
  List_Output(Machine(Price),query_price)==(pp)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Price),set_damage_price)==(set_damage_price(dd,pp));
  List_Header(Machine(Price),query_damage_penalty)==(qq <-- query_damage_penalty(vv));
  List_Header(Machine(Price),query_damage_price)==(qq,rr <-- query_damage_price(dd));
  List_Header(Machine(Price),set_price)==(set_price(cc,pp,dly));
  List_Header(Machine(Price),query_price)==(pp <-- query_price(cc))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Price),set_damage_price)==(dd: DAMAGES_ST & pp: NAT);
  List_Precondition(Machine(Price),query_damage_penalty)==(vv: VEHICLES_ST);
  List_Precondition(Machine(Price),query_damage_price)==(dd: DAMAGES_ST);
  List_Precondition(Machine(Price),set_price)==(cc: CATEGORIES_ST & pp: NAT1 & dly: NAT1);
  List_Precondition(Machine(Price),query_price)==(cc: CATEGORIES_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Price),query_price)==(cc: CATEGORIES_ST | pp:=price(cc));
  Expanded_List_Substitution(Machine(Price),set_price)==(cc: CATEGORIES_ST & pp: NAT1 & dly: NAT1 | price,delay_price:=price<+{cc|->pp},delay_price<+{cc|->dly});
  Expanded_List_Substitution(Machine(Price),query_damage_price)==(dd: DAMAGES_ST | dd: dom(damage_price) ==> qq,rr:=damage_price(dd),true [] not(dd: dom(damage_price)) ==> (@(qq$0).(qq$0: NAT ==> qq:=qq$0) || rr:=false));
  Expanded_List_Substitution(Machine(Price),query_damage_penalty)==(vv: VEHICLES_ST | qq:=damage_price(damages(vv)));
  Expanded_List_Substitution(Machine(Price),set_damage_price)==(dd: DAMAGES_ST & pp: NAT | damage_price:=damage_price<+{dd|->pp});
  List_Substitution(Machine(Price),set_damage_price)==(damage_price(dd):=pp);
  List_Substitution(Machine(Price),query_damage_penalty)==(qq:=damage_price(damages(vv)));
  List_Substitution(Machine(Price),query_damage_price)==(IF dd: dom(damage_price) THEN qq:=damage_price(dd) || rr:=true ELSE qq:: NAT || rr:=false END);
  List_Substitution(Machine(Price),set_price)==(price(cc):=pp || delay_price(cc):=dly);
  List_Substitution(Machine(Price),query_price)==(pp:=price(cc))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Price))==(?);
  Inherited_List_Constants(Machine(Price))==(?);
  List_Constants(Machine(Price))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Price),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Price))==(CATEGORIES_ST,DAMAGES_ST,BOOL_RESPONSE);
  Context_List_Defered(Machine(Price))==(VEHICLES_ST);
  Context_List_Sets(Machine(Price))==(CATEGORIES_ST,DAMAGES_ST,BOOL_RESPONSE,VEHICLES_ST);
  List_Valuable_Sets(Machine(Price))==(?);
  Inherited_List_Enumerated(Machine(Price))==(?);
  Inherited_List_Defered(Machine(Price))==(?);
  Inherited_List_Sets(Machine(Price))==(?);
  List_Enumerated(Machine(Price))==(?);
  List_Defered(Machine(Price))==(?);
  List_Sets(Machine(Price))==(?);
  Set_Definition(Machine(Price),DAMAGES_ST)==({light,moderate,heavy,no_damage});
  Set_Definition(Machine(Price),CATEGORIES_ST)==({car,motocycle,lux_car})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Price))==(?);
  Expanded_List_HiddenConstants(Machine(Price))==(?);
  List_HiddenConstants(Machine(Price))==(?);
  External_List_HiddenConstants(Machine(Price))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Price))==(btrue);
  Context_List_Properties(Machine(Price))==(CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}) & DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}) & BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}));
  Inherited_List_Properties(Machine(Price))==(btrue);
  List_Properties(Machine(Price))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Price),Machine(VehiclesCTX))==(?);
  Seen_Context_List_Enumerated(Machine(Price))==(DAMAGES_ST,BOOL_RESPONSE);
  Seen_Context_List_Invariant(Machine(Price))==(btrue);
  Seen_Context_List_Assertions(Machine(Price))==(btrue);
  Seen_Context_List_Properties(Machine(Price))==(DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}) & BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}));
  Seen_List_Constraints(Machine(Price))==(btrue);
  Seen_List_Operations(Machine(Price),Machine(VehiclesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Price),Machine(VehiclesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Price),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Price),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Price),Machine(Boolean))==(btrue);
  Seen_Internal_List_Operations(Machine(Price),Machine(Damage))==(apply_damage,fix_damage);
  Seen_List_Precondition(Machine(Price),fix_damage)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Price),fix_damage)==(damages(vv)/=no_damage ==> damages,rr:=damages<+{vv|->no_damage},true [] not(damages(vv)/=no_damage) ==> rr:=false);
  Seen_List_Precondition(Machine(Price),apply_damage)==(dd: DAMAGES_ST & dd/=no_damage & vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Price),apply_damage)==(damages:=damages<+{vv|->dd});
  Seen_List_Operations(Machine(Price),Machine(Damage))==(apply_damage,fix_damage);
  Seen_Expanded_List_Invariant(Machine(Price),Machine(Damage))==(btrue);
  Set_Definition(Machine(Price),BOOL_RESPONSE)==({true,false});
  Set_Definition(Machine(Price),DAMAGES_ST)==({light,moderate,heavy,no_damage});
  Seen_Internal_List_Operations(Machine(Price),Machine(DamagesCTX))==(?);
  Seen_List_Operations(Machine(Price),Machine(DamagesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Price),Machine(DamagesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Price),Machine(CategoriesCTX))==(?);
  Seen_List_Operations(Machine(Price),Machine(CategoriesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Price),Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Price),set_damage_price)==(?);
  List_ANY_Var(Machine(Price),query_damage_penalty)==(?);
  List_ANY_Var(Machine(Price),query_damage_price)==(?);
  List_ANY_Var(Machine(Price),set_price)==(?);
  List_ANY_Var(Machine(Price),query_price)==(?)
END
&
THEORY ListOfIdsX IS
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
  List_Of_Ids(Machine(Boolean)) == (BOOL_RESPONSE,true,false | ? | ? | ? | ? | ? | ? | ? | Boolean);
  List_Of_HiddenCst_Ids(Machine(Boolean)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Boolean)) == (?);
  List_Of_VisibleVar_Ids(Machine(Boolean)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Boolean)) == (?: ?);
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
  List_Of_Ids_SeenBNU(Machine(CategoriesCTX)) == (?: ?)
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Price)) == (Type(delay_price) == Mvl(SetOf(etype(CATEGORIES_ST,?,?)*btype(INTEGER,?,?)));Type(price) == Mvl(SetOf(etype(CATEGORIES_ST,?,?)*btype(INTEGER,?,?)));Type(damage_price) == Mvl(SetOf(etype(DAMAGES_ST,?,?)*btype(INTEGER,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Price)) == (Type(query_price) == Cst(btype(INTEGER,?,?),etype(CATEGORIES_ST,?,?));Type(set_price) == Cst(No_type,etype(CATEGORIES_ST,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(query_damage_price) == Cst(btype(INTEGER,?,?)*etype(BOOL_RESPONSE,?,?),etype(DAMAGES_ST,?,?));Type(query_damage_penalty) == Cst(btype(INTEGER,?,?),atype(VEHICLES_ST,?,?));Type(set_damage_price) == Cst(No_type,etype(DAMAGES_ST,?,?)*btype(INTEGER,?,?)));
  Observers(Machine(Price)) == (Type(query_price) == Cst(btype(INTEGER,?,?),etype(CATEGORIES_ST,?,?));Type(query_damage_price) == Cst(btype(INTEGER,?,?)*etype(BOOL_RESPONSE,?,?),etype(DAMAGES_ST,?,?));Type(query_damage_penalty) == Cst(btype(INTEGER,?,?),atype(VEHICLES_ST,?,?)))
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
