select concat(id_invoice,' ',id_barang) as id_penjualan, a.id_invoice, a.tanggal, a.id_barang, 
b.nama_barang, a.harga, a.unit, a.jumlah_barang, (a.jumlah_barang * a.harga) as total_harga_perbarang, 
a.mata_uang, b.kode_brand, b.brand, a.id_customer, c.nama as nama_customer, c.cabang_sales, c.id_distributor,
c.group as group_category
from kimiafarma.penjualan1 as a
left join kimiafarma.barang_ds as b 
on (a.id_barang = b.kode_barang)
left join kimiafarma.pelanggan_ds as c
on (a.id_customer = c.id_customer);