copy categories 
from 's3://migracao-northwindddl/northwindddl/categories.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy customers
from 's3://migracao-northwindddl/northwindddl/customers.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy employees 
from 's3://migracao-northwindddl/northwindddl/employees.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy order_details 
from 's3://migracao-northwindddl/northwindddl/orderdetails.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy orders 
from 's3://migracao-northwindddl/northwindddl/orders.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy products 
from 's3://migracao-northwindddl/northwindddl/products.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy shippers 
from 's3://migracao-northwindddl/northwindddl/shippers.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;

copy suppliers 
from 's3://migracao-northwindddl/northwindddl/suppliers.csv' 
CREDENTIALS 'aws_access_key_id={credencial própria};aws_secret_access_key={secret key próprio}'
delimiter ';' 
region 'us-east-1'
IGNOREHEADER 1
DATEFORMAT AS 'YYYY-MM-DD HH:MI:SS'
removequotes;