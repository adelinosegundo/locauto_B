Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Vehicle))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Vehicle))==(Machine(Vehicle));
  Level(Machine(Vehicle))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Vehicle)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Vehicle))==(Boolean,VehiclesCTX,Category)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Vehicle))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Vehicle))==(?);
  List_Includes(Machine(Vehicle))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Vehicle))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Vehicle))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Vehicle))==(?);
  Context_List_Variables(Machine(Vehicle))==(?);
  Abstract_List_Variables(Machine(Vehicle))==(?);
  Local_List_Variables(Machine(Vehicle))==(vehicles);
  List_Variables(Machine(Vehicle))==(vehicles);
  External_List_Variables(Machine(Vehicle))==(vehicles)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Vehicle))==(?);
  Abstract_List_VisibleVariables(Machine(Vehicle))==(?);
  External_List_VisibleVariables(Machine(Vehicle))==(?);
  Expanded_List_VisibleVariables(Machine(Vehicle))==(?);
  List_VisibleVariables(Machine(Vehicle))==(?);
  Internal_List_VisibleVariables(Machine(Vehicle))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Vehicle))==(btrue);
  Gluing_List_Invariant(Machine(Vehicle))==(btrue);
  Expanded_List_Invariant(Machine(Vehicle))==(btrue);
  Abstract_List_Invariant(Machine(Vehicle))==(btrue);
  Context_List_Invariant(Machine(Vehicle))==(category: VEHICLES_ST +-> CATEGORIES_ST);
  List_Invariant(Machine(Vehicle))==(vehicles <: VEHICLES_ST)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Vehicle))==(btrue);
  Abstract_List_Assertions(Machine(Vehicle))==(btrue);
  Context_List_Assertions(Machine(Vehicle))==(btrue);
  List_Assertions(Machine(Vehicle))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Vehicle))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Vehicle))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Vehicle))==(vehicles:={});
  Context_List_Initialisation(Machine(Vehicle))==(skip);
  List_Initialisation(Machine(Vehicle))==(vehicles:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Vehicle))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Vehicle),Machine(Boolean))==(?);
  List_Instanciated_Parameters(Machine(Vehicle),Machine(VehiclesCTX))==(?);
  List_Instanciated_Parameters(Machine(Vehicle),Machine(Category))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Vehicle))==(btrue);
  List_Constraints(Machine(Vehicle))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Vehicle))==(add_vehicle,remove_vehicle,query_vehicle);
  List_Operations(Machine(Vehicle))==(add_vehicle,remove_vehicle,query_vehicle)
END
&
THEORY ListInputX IS
  List_Input(Machine(Vehicle),add_vehicle)==(vv);
  List_Input(Machine(Vehicle),remove_vehicle)==(vv);
  List_Input(Machine(Vehicle),query_vehicle)==(vv)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Vehicle),add_vehicle)==(rr);
  List_Output(Machine(Vehicle),remove_vehicle)==(rr);
  List_Output(Machine(Vehicle),query_vehicle)==(qq)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Vehicle),add_vehicle)==(rr <-- add_vehicle(vv));
  List_Header(Machine(Vehicle),remove_vehicle)==(rr <-- remove_vehicle(vv));
  List_Header(Machine(Vehicle),query_vehicle)==(qq <-- query_vehicle(vv))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Vehicle),add_vehicle)==(vv: VEHICLES_ST & vv: dom(category));
  List_Precondition(Machine(Vehicle),remove_vehicle)==(vv: VEHICLES_ST);
  List_Precondition(Machine(Vehicle),query_vehicle)==(vv: VEHICLES_ST)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Vehicle),query_vehicle)==(vv: VEHICLES_ST | vv: vehicles ==> qq:=true [] not(vv: vehicles) ==> qq:=false);
  Expanded_List_Substitution(Machine(Vehicle),remove_vehicle)==(vv: VEHICLES_ST | vv: vehicles ==> vehicles,rr:=vehicles-{vv},true [] not(vv: vehicles) ==> rr:=false);
  Expanded_List_Substitution(Machine(Vehicle),add_vehicle)==(vv: VEHICLES_ST & vv: dom(category) | vv/:vehicles ==> vehicles,rr:=vehicles\/{vv},true [] not(vv/:vehicles) ==> rr:=false);
  List_Substitution(Machine(Vehicle),add_vehicle)==(IF vv/:vehicles THEN vehicles:=vehicles\/{vv} || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Vehicle),remove_vehicle)==(IF vv: vehicles THEN vehicles:=vehicles-{vv} || rr:=true ELSE rr:=false END);
  List_Substitution(Machine(Vehicle),query_vehicle)==(IF vv: vehicles THEN qq:=true ELSE qq:=false END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Vehicle))==(?);
  Inherited_List_Constants(Machine(Vehicle))==(?);
  List_Constants(Machine(Vehicle))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Vehicle),BOOL_RESPONSE)==({true,false});
  Context_List_Enumerated(Machine(Vehicle))==(BOOL_RESPONSE);
  Context_List_Defered(Machine(Vehicle))==(VEHICLES_ST);
  Context_List_Sets(Machine(Vehicle))==(BOOL_RESPONSE,VEHICLES_ST);
  List_Valuable_Sets(Machine(Vehicle))==(?);
  Inherited_List_Enumerated(Machine(Vehicle))==(?);
  Inherited_List_Defered(Machine(Vehicle))==(?);
  Inherited_List_Sets(Machine(Vehicle))==(?);
  List_Enumerated(Machine(Vehicle))==(?);
  List_Defered(Machine(Vehicle))==(?);
  List_Sets(Machine(Vehicle))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Vehicle))==(?);
  Expanded_List_HiddenConstants(Machine(Vehicle))==(?);
  List_HiddenConstants(Machine(Vehicle))==(?);
  External_List_HiddenConstants(Machine(Vehicle))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Vehicle))==(btrue);
  Context_List_Properties(Machine(Vehicle))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}));
  Inherited_List_Properties(Machine(Vehicle))==(btrue);
  List_Properties(Machine(Vehicle))==(btrue)
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Vehicle),Machine(Category))==(set_category,query_category);
  Seen_Context_List_Enumerated(Machine(Vehicle))==(BOOL_RESPONSE,CATEGORIES_ST);
  Seen_Context_List_Invariant(Machine(Vehicle))==(damage_price: DAMAGES_ST +-> NAT & price: CATEGORIES_ST +-> NAT1 & delay_price: CATEGORIES_ST +-> NAT1);
  Seen_Context_List_Assertions(Machine(Vehicle))==(btrue);
  Seen_Context_List_Properties(Machine(Vehicle))==(BOOL_RESPONSE: FIN(INTEGER) & not(BOOL_RESPONSE = {}) & VEHICLES_ST: FIN(INTEGER) & not(VEHICLES_ST = {}) & CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}));
  Seen_List_Constraints(Machine(Vehicle))==(btrue);
  Seen_List_Precondition(Machine(Vehicle),query_category)==(vv: VEHICLES_ST);
  Seen_Expanded_List_Substitution(Machine(Vehicle),query_category)==(vv: dom(category) ==> qq,rr:=category(vv),true [] not(vv: dom(category)) ==> (@(qq$0).(qq$0: CATEGORIES_ST ==> qq:=qq$0) || rr:=false));
  Seen_List_Precondition(Machine(Vehicle),set_category)==(vv: VEHICLES_ST & cc: CATEGORIES_ST & cc: dom(price));
  Seen_Expanded_List_Substitution(Machine(Vehicle),set_category)==(category:=category<+{vv|->cc});
  Seen_List_Operations(Machine(Vehicle),Machine(Category))==(set_category,query_category);
  Seen_Expanded_List_Invariant(Machine(Vehicle),Machine(Category))==(btrue);
  Set_Definition(Machine(Vehicle),CATEGORIES_ST)==({car,motocycle,lux_car});
  Set_Definition(Machine(Vehicle),BOOL_RESPONSE)==({true,false});
  Seen_Internal_List_Operations(Machine(Vehicle),Machine(VehiclesCTX))==(?);
  Seen_List_Operations(Machine(Vehicle),Machine(VehiclesCTX))==(?);
  Seen_Expanded_List_Invariant(Machine(Vehicle),Machine(VehiclesCTX))==(btrue);
  Seen_Internal_List_Operations(Machine(Vehicle),Machine(Boolean))==(?);
  Seen_List_Operations(Machine(Vehicle),Machine(Boolean))==(?);
  Seen_Expanded_List_Invariant(Machine(Vehicle),Machine(Boolean))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Vehicle),add_vehicle)==(?);
  List_ANY_Var(Machine(Vehicle),remove_vehicle)==(?);
  List_ANY_Var(Machine(Vehicle),query_vehicle)==(?)
END
&
THEORY ListOfIdsX IS
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
  Variables(Machine(Vehicle)) == (Type(vehicles) == Mvl(SetOf(atype(VEHICLES_ST,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Vehicle)) == (Type(query_vehicle) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(remove_vehicle) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?));Type(add_vehicle) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?)));
  Observers(Machine(Vehicle)) == (Type(query_vehicle) == Cst(etype(BOOL_RESPONSE,?,?),atype(VEHICLES_ST,?,?)))
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
