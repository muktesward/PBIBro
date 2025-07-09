[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DimAgent = let
  Source = Sql.Database("mukteswar\mssqlserver02", "practice"),
  #"Navigation 1" = Source{[Schema = "dbo", Item = "DimAgent"]}[Data]
in
  #"Navigation 1";
shared FactCallsHandled = let
  Source = Sql.Database("mukteswar\mssqlserver02", "practice"),
  #"Navigation 1" = Source{[Schema = "dbo", Item = "FactCallsHandled"]}[Data]
in
  #"Navigation 1";
