using { mydemodb as db } from '../db/data-model';

service CatalogService@(path: '/soSRV'){

entity SalesOrders as projection on db.SalesOrders{
   *,
   SalesOrderProducts: redirected to SalesOrderProducts
}
entity SalesOrderProducts as projection on db.SalesOrderProducts;

}
