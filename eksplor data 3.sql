select a.id_invoice, a.tanggal, a.id_customer, a.nama_customer,
a.cabang_sales, a.id_distributor, a.group_category,
count(distinct id_barang) total_barang, sum(total_harga_perbarang) total_pembelian
from kimiafarma.penjualan2 as a
group by 1,2,3,4,5,6,7
order by 1;