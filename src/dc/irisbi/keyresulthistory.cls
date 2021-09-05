Class dc.irisbi.KeyResultHistory Extends (%Persistent, %JSON.Adaptor)
{

Parameter %JSONREFERENCE = "ID";

Property KeyResultHistoryId As %Integer [ Calculated, SqlComputeCode = { set {*}={%%ID}}, SqlComputed ];

Property KRDate As %Date;

Property Confidence As %Integer(VALUELIST = ",1,2,3");

Property KRValue As %Double;

Property KeyResult As dc.irisbi.KeyResult;

ForeignKey KeyResultFK(KeyResult) References dc.irisbi.KeyResult();

Index KeyResultIndex On KeyResult;

Storage Default
{
<Data name="KeyResultHistoryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>KRDate</Value>
</Value>
<Value name="3">
<Value>Confidence</Value>
</Value>
<Value name="4">
<Value>KRValue</Value>
</Value>
<Value name="5">
<Value>KeyResult</Value>
</Value>
</Data>
<DataLocation>^dc.irisbi.KeyResultHistoryD</DataLocation>
<DefaultData>KeyResultHistoryDefaultData</DefaultData>
<IdLocation>^dc.irisbi.KeyResultHistoryD</IdLocation>
<IndexLocation>^dc.irisbi.KeyResultHistoryI</IndexLocation>
<StreamLocation>^dc.irisbi.KeyResultHistoryS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
