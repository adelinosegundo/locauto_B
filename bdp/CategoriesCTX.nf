Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(CategoriesCTX))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(CategoriesCTX))==(Machine(CategoriesCTX));
  Level(Machine(CategoriesCTX))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(CategoriesCTX)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(CategoriesCTX))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(CategoriesCTX))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(CategoriesCTX))==(?);
  List_Includes(Machine(CategoriesCTX))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(CategoriesCTX))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(CategoriesCTX))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(CategoriesCTX))==(?);
  Context_List_Variables(Machine(CategoriesCTX))==(?);
  Abstract_List_Variables(Machine(CategoriesCTX))==(?);
  Local_List_Variables(Machine(CategoriesCTX))==(?);
  List_Variables(Machine(CategoriesCTX))==(?);
  External_List_Variables(Machine(CategoriesCTX))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(CategoriesCTX))==(?);
  Abstract_List_VisibleVariables(Machine(CategoriesCTX))==(?);
  External_List_VisibleVariables(Machine(CategoriesCTX))==(?);
  Expanded_List_VisibleVariables(Machine(CategoriesCTX))==(?);
  List_VisibleVariables(Machine(CategoriesCTX))==(?);
  Internal_List_VisibleVariables(Machine(CategoriesCTX))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(CategoriesCTX))==(btrue);
  Gluing_List_Invariant(Machine(CategoriesCTX))==(btrue);
  Expanded_List_Invariant(Machine(CategoriesCTX))==(btrue);
  Abstract_List_Invariant(Machine(CategoriesCTX))==(btrue);
  Context_List_Invariant(Machine(CategoriesCTX))==(btrue);
  List_Invariant(Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(CategoriesCTX))==(btrue);
  Abstract_List_Assertions(Machine(CategoriesCTX))==(btrue);
  Context_List_Assertions(Machine(CategoriesCTX))==(btrue);
  List_Assertions(Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(CategoriesCTX))==(skip);
  Context_List_Initialisation(Machine(CategoriesCTX))==(skip);
  List_Initialisation(Machine(CategoriesCTX))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(CategoriesCTX))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(CategoriesCTX))==(btrue);
  List_Constraints(Machine(CategoriesCTX))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(CategoriesCTX))==(?);
  List_Operations(Machine(CategoriesCTX))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(CategoriesCTX))==(?);
  Inherited_List_Constants(Machine(CategoriesCTX))==(?);
  List_Constants(Machine(CategoriesCTX))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(CategoriesCTX),CATEGORIES_ST)==({car,motocycle,lux_car});
  Context_List_Enumerated(Machine(CategoriesCTX))==(?);
  Context_List_Defered(Machine(CategoriesCTX))==(?);
  Context_List_Sets(Machine(CategoriesCTX))==(?);
  List_Valuable_Sets(Machine(CategoriesCTX))==(?);
  Inherited_List_Enumerated(Machine(CategoriesCTX))==(?);
  Inherited_List_Defered(Machine(CategoriesCTX))==(?);
  Inherited_List_Sets(Machine(CategoriesCTX))==(?);
  List_Enumerated(Machine(CategoriesCTX))==(CATEGORIES_ST);
  List_Defered(Machine(CategoriesCTX))==(?);
  List_Sets(Machine(CategoriesCTX))==(CATEGORIES_ST)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(CategoriesCTX))==(?);
  Expanded_List_HiddenConstants(Machine(CategoriesCTX))==(?);
  List_HiddenConstants(Machine(CategoriesCTX))==(?);
  External_List_HiddenConstants(Machine(CategoriesCTX))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(CategoriesCTX))==(btrue);
  Context_List_Properties(Machine(CategoriesCTX))==(btrue);
  Inherited_List_Properties(Machine(CategoriesCTX))==(btrue);
  List_Properties(Machine(CategoriesCTX))==(CATEGORIES_ST: FIN(INTEGER) & not(CATEGORIES_ST = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(CategoriesCTX)) == (CATEGORIES_ST,car,motocycle,lux_car | ? | ? | ? | ? | ? | ? | ? | CategoriesCTX);
  List_Of_HiddenCst_Ids(Machine(CategoriesCTX)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(CategoriesCTX)) == (?);
  List_Of_VisibleVar_Ids(Machine(CategoriesCTX)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(CategoriesCTX)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(CategoriesCTX)) == (Type(CATEGORIES_ST) == Cst(SetOf(etype(CATEGORIES_ST,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(CategoriesCTX)) == (Type(car) == Cst(etype(CATEGORIES_ST,0,2));Type(motocycle) == Cst(etype(CATEGORIES_ST,0,2));Type(lux_car) == Cst(etype(CATEGORIES_ST,0,2)))
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
