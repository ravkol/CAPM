namespace mydemodb;

entity SalesOrders {

        key soNumber: Integer;
            orderDate: Date;
            customerName: String;
            customerNumber: String;
            poNumber: Integer;
            inquiryNumber: String;
            totalOrderItems: Integer;
            SalesOrderProducts: Association to many SalesOrderProducts on SalesOrderProducts.salesOrder = $self;
            }

entity SalesOrderProducts {

        key salesOrder: Association to SalesOrders;
        key supplier: Integer;
            orderQty: Integer;
            availableQty: Integer;
            deliveryDate: Date;
            Status: String;
            orderDate: Date;
            location: String;
}
