/// 
Class dc.irisbi.OKRCube Extends %DeepSee.CubeDefinition [ DependsOn = dc.irisbi.KeyResult, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="OKRCube" displayName="OKRCube" disabled="false" abstract="false" sourceClass="dc.irisbi.KeyResult" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="ObjectiveKR" displayName="Objective/KR" disabled="false" hasAll="true" allCaption="All Name" allDisplayName="Name" type="data" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" displayName="Objective" disabled="false" hidden="false">
      <level name="Name" displayName="Objective" disabled="false" sourceProperty="Objective.SeqName" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
    </hierarchy>
    <hierarchy name="H2" displayName="Key Result" disabled="false" hidden="false">
      <level name="Name" displayName="Key Result" disabled="false" sourceProperty="SeqName" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="3">
      </level>
    </hierarchy>
  </dimension>
  <measure name="FinalValue" disabled="false" sourceProperty="FinalValue" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="1">
  </measure>
  <measure name="BaselineValue" disabled="false" sourceProperty="BaselineValue" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="2">
  </measure>
  <measure name="TargetValue" disabled="false" sourceProperty="TargetValue" aggregate="SUM" type="number" hidden="false" searchable="false" factNumber="4">
  </measure>
  <calculatedMember name="Progress" disabled="false" dimension="Measures" valueExpression="[Measures].[FinalValue]/ [Measures].[TargetValue]" formatString="#%;;;;" hidden="false">
  </calculatedMember>
</cube>
}

Parameter DOMAIN;

/// Stop Journalling in the current database
ClassMethod StopJournalling(db As %String) As %Status
{
  Set sc = $$$OK
  // disable journalling
  set ns=$ZNSPACE
  zn "%SYS"
  set path = ##class(Config.Databases).Open(db).Directory
  set database = ##class(SYS.Database).%OpenId($get(path))
  if $IsObject(database)  {
    do database.DisableJournaling() 
    set sc = database.%Save()
    }
  else { 
    set sc=$$$ERROR($$$GeneralError,"Custom error message")}
  zn ns
  Return sc
}

}
