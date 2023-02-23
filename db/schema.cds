namespace sap.ui.riskmanagement;
using { managed } from '@sap/cds/common';

  entity Risks : managed {
    key ID      : UUID  @(Core.Computed : true);
    title       : String(100);
    prio        : String(5);
    descr       : String;
    miti        : Association to Mitigations;
    impact      : Integer;
    criticality : Integer;
    PurOrders   : Association to PurchaseOrder;

  }

  entity Mitigations : managed {
    key ID       : UUID  @(Core.Computed : true);
    description  : String;
    owner        : String;
    timeline     : String;
    risks        : Association to many Risks on risks.miti = $self;
  }

using {  OP_API_PURCHASEORDER_PROCESS_SRV_0001 as purord } from '../srv/external/OP_API_PURCHASEORDER_PROCESS_SRV_0001';

    entity PurchaseOrder as projection on purord.A_PurchaseOrder {
        PurchaseOrder as PurOrder,
        CompanyCode as CompCode,
        PurchaseOrderDate as Date,
        PurchaseOrderType as OrderType,
}