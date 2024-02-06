

class Product{
  String? id;
  String? productName;
  String? produtCode;
  String? image;
  String? unitPrice;
  String? quantity;
  String? totalPrice;
  String? createDate;

  Product({
  this.id,
  this.productName,
  this.produtCode,
  this.image,
  this.unitPrice,
  this.quantity,
  this.totalPrice,
  this.createDate,
});

  Product.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    productName = json['ProductName'];
    produtCode = json['ProductCode'];
    unitPrice = json['UnitPrice'];
    image = json['Image'];
    quantity = json['Qty'];
    totalPrice = json['TotalPrice'];
    createDate = json['CreateDate'];
  }
}