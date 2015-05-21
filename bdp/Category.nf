Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Category))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Category))==(Machine(Category));
  Level(Machine(Category))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Category)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Category))==(Boolean,VehiclesCTX,CategoriesCTX,Price)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Category))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Category))==(?);
  List_Includes(Machine(Category))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Category))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Category))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Category))==(?);
  Context_List_Variables(Machine(Category))==(?);
  Abstract_List_Variables(Machine(Category))==(?);
  Local_List_Variables(Machine(Category))==(category);
  List_Variables(Machine(Category))==(category);
  External_List_Variables(Machine(Category))==(category)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Category))==(?);
  Abstract_List_VisibleVariables(Machine(Category))==(?);
  External_List_VisibleVariables(Machine(Category))==(?);
  Expanded_List_VisibleVariables(Machine(Category))==(?);
  List_VisibleVariables(Machine(Category))==(?);
  Internal_List_VisibleVariables(Machine(Category))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Category))==(btrue);
  Gluing_List_Invariant(Machine(Category))==(btrue);
  Expanded_List_Invariant(Machine(Category))==(btrue);
  Abstract_List_Invariant(Machine(Category))==(btrue);
  Context_List_Invariant(Machine(Category))==(damage_price: DAMAGES_ST +-> NAT & price: CATEGORIES_ST +-> NAT1 & delay_price: CATEGORIES_ST +-> NAT1);
  List_Invariant(Machine(Category))==(category: VEHICLES_ST +-> CATEGORIES_ST)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Category))==(btrue);
  Abstract_List_Assertions(Machine(Category))==(btrue);
  Context_List_Assertions(Machine(Category))==(btrue);
  List_Assertions(Machine(Category))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Category))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Category))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Category))==(category:={});
  Context_List_Initialisation(Machine(Category))==(skip);
  List_Initialisation(Machine(Category))==(category:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Category))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Category),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Category),Machine(VehiclesCTX))==(?);
  List_Instanciated_Parameters(Machine(Category),Machine(CategoriesCTX))==(?);
  List_Instanciated_Parameters(Machine(Category),Machine(Price))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Category))==(btrue);
  List_Constraints(Machine(Category))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Category))==(set_category,query_category);
  List_Operations(Machine(Category))==(set_category,query_category)
END
&
THEORY ListInputX IS
  List_Input(Machine(Category),set_category)==(vv,cc);
  List_Input(Machine(Category),query_category)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Category),set_category)==(?);
  List_Output(Machine(Category),query_category)==(qq,rr)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Category),set_category)==(set_category(vv,cc));
  List_Header(Machine(Category),query_category)==(qq,rr <-- query_category(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Category),set_category)==(vv: VEHICLES_ST & cc: CATEGORIES_ST & cc: dom(price));
  List_Precondition(Machine(Category),query_category)==(vv: VEHICLES_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Category),query_category)==(vv: VEHICLES_ST | vv: dom(category) ==> qq,rr:=category(vv),true [] not(vv: dom(category)) ==> (@(qq$0).(qq$0: CATEGORIES_ST ==> qq:=qq$0) || rr:=false));
  Expanded_List_Substitution(Machine(Category),set_category)==(vv: VEHICLES_ST & cc: CATEGORIES_ST & cc: dom(price) | category:=category<+{vv|->cc});
  List_Substitution(Machine(Category),set_category)==(category(vv):=cc);
  List_Substitution(Machine(Category),query_category)==(IF vv: dom(category) THEN qq:=category(vv) || rr:=true ELSE qq:: CATEGORIES_ST || rr:=false END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Category))==(?);
  Inherited_List_Constants(Machine(Category))==(?);
  List_Constants(Machine(Category))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Category),CATEGORIES_ST)==({car,motocycle,lux_car});
  Context_List_Enumerated(Machine(Category))==(BOOL_RESPONSE,CATEGORIES_ST);
  Context_List_Defered(Machine(Category))==(VEHICLES_ST);
  Context_List_Sets(Machine(Category))==(BOOL_RESPONSE,VEHICLES_ST,CATEGORIES_ST);
  List_Valuable_Sets(Machine(Category))==(?);
  Inherited_List_Enumerated(Machine(Category))==(?);
  Inherited_List_Defered(Machine(Category))==(?);
  Inherited_List_Sets(Machine(Category))==(?);
  List_Enumerated(Machine(Category))==(?);
  List_Defered(Machine(Category))==(?);
  List_Sets(Machine(Category))==(?);
  Set_Definition(Machine(Category),BOOL_RESPONSE)==({true,false})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Category))==(?);
  Expanded_List_HiddenConstants(Machine(Category))==(?);
  List_HiddenConstants(Machine(Category))==(?);
  External_List_HiddenConstants(Machine(Category))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Category))==(btrue);
  Context_List_Properties(Machine(Category))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}) & CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}));
  Inherited_List_Properties(Machine(Category))==(btrue);
  List_Properties(Machine(Category))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Category),Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price);
  Seen_Context_List_Enumerated(Machine(Category))==(CATEGORIES_ST,DAMAGES_ST,BOOL_RESPONSE);
  Seen_Context_List_Invariant(Machine(Category))==(damages: VEHICLES_ST --> DAMAGES_ST);
  Seen_Context_List_Assertions(Machine(Category))==(btrue);
  Seen_Context_List_Properties(Machine(Category))==(CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}) & DAMAGES_ST: FIN(INTEGER) & not(DAMAGES_ST = {}) & BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}));
  Seen_List_Constraints(Machine(Category))==(btrue);
  Seen_List_Precondition(Machine(Category),query_price)==(cc: CATEGORIES_ST);
  Seen_Expanded_List_Substitution(Machine(Category),query_price)==(pp:=price(cc));
  Seen_List_Precondition(Machine(Category),set_price)==(cc: CATEGORIES_ST & pp: NAT1 & dly: NAT1);
  Seen_Expanded_List_Substitution(Machine(Category),set_price)==(price,delay_price:=price<+{cc|->pp},delay_price<+{cc|->dly});
  Seen_List_Precondition(Machine(Category),query_damage_price)==(dd: DAMAGES_ST);
  Seen_Expanded_List_Substitution(Machine(Category),query_damage_price)==(dd: dom(damage_price) ==> qq,rr:=damage_price(dd),true [] not(dd: dom(damage_price)) ==> (@(qq$0).(qq$0: NAT ==> qq:=qq$0) || rr:=false));
  Seen_List_Precondition(Machine(Category),query_damage_penalty)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Category),query_damage_penalty)==(qq:=damage_price(damages(vv)));
  Seen_List_Precondition(Machine(Category),set_damage_price)==(dd: DAMAGES_ST & pp: NAT);
  Seen_Expanded_List_Substitution(Machine(Category),set_damage_price)==(damage_price:=damage_price<+{dd|->pp});
  Seen_List_Operations(Machine(Category),Machine(Price))==(set_damage_price,query_damage_penalty,query_damage_price,set_price,query_price);
  Seen_Expanded_List_Invariant(Machine(Category),Machine(Price))==(btrue);
  Set_Definition(Machine(Category),BOOL_RESPONSE)==({true,false});
  Set_Definition(Machine(Category),DAMAGES_ST)==({light,moderate,heavy,no_damage});
  Set_Definition(Machine(Category),CATEGORIES_ST)==({car,motocycle,lux_car});
  Seen_Internal_List_Operations(Machine(Category),Machine(CategoriesCTX))==(?);
  Seen_List_Operations(Machine(Category),Machine(CategoriesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Category),Machine(CategoriesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Category),Machine(VehiclesCTX))==(?);
  Seen_List_Operations(Machine(Category),Machine(VehiclesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Category),Machine(VehiclesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Category),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Category),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Category),Machine(Boolean))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Category),set_category)==(?);
  List_ANY_Var(Machine(Category),query_category)==(?)
END
&
THEORY ListOfIdsX IS
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
  Variables(Machine(Category)) == (Type(category) == Mvl(SetOf(atype(VEHICLES_ST,?,?)*etype(CATEGORIES_ST,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Category)) == (Type(query_category) == Cst(etype(CATEGORIES_ST,?,?)*etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(set_category) == Cst(No_type,atype(VEHICLES_ST,?,?)*etype(CATEGORIES_ST,?,?)));
  Observers(Machine(Category)) == (Type(query_category) == Cst(etype(CATEGORIES_ST,?,?)*etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?)))
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
