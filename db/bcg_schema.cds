// namespace sap.ui.collaborationportal;

// using {managed} from '@sap/cds/common';

// entity PurchaseOrderHeader : managed {
//     key PurchaseOrderNo            : String(10);
//         descr                      : String;
//         CompanyCode                : String(5);
//         PurchasingProcessingStatus : String(3);
//         PurchaseOrderType          : String(3);
//         Supplier                   : String(10);
//         _items                     : Association to many PurchaseOrderItem
//                                          on PurchaseOrderItem.PurchaseOrderNo = $PurchaseOrderItemNo
// }

// entity PurchaseOrderItem : managed {
//     key PurchaseOrderNo     : String(10);
//     key PurchaseOrderItemNo : String;
//         Material            : String;
//         Plant               : String(4);
//         _header             : Association to PurchaseOrderHeader
//                                   on PurchaseOrderHeader.PurchaseOrderNo = $PurchaseOrderNo;
// }

// entity ProductionOrderOperation : managed {
//     key ManufacturingOrder : String;
//     key OrderInternalBillOfOperations : String;
//     key OrderIntBillOfOperationsItem : String;
//     OpSchedulingMode : String;
//     OpSchedulingStrategy : String;
//     OpPlannedTotalQuantity : String;
//     OpTotalConfirmedYieldQty : String;
//     PurchaseOrderItem : Association to PurchaseOrderItem on PurchaseOrderItem.
// }