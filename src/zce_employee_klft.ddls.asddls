@EndUserText.label: 'Custom  Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_EMPLOYEE_KLFT'
define custom entity ZCE_Employee_klft
{
  key id   : abap.char(12);
      name : abap.char(40);
}
