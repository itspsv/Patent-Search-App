CREATE TABLE patents_data (
   id string(25), type string(25), number string(20), country string(2), date string(20), abstract string(300000), title string(100000),kind string(5), num_claims numeric, filename string(100), withdrawn numeric, 
) PRIMARY KEY (id);