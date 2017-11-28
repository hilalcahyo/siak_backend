SELECT 
table_jurnal_umum_main.id_jurnal_umum_main,
table_keterangan.deskripsi_keterangan as deskripsi_keterangan_debet,
jurnal_umum_debet.jumlah as jumlah_debet,
jurnal_umum_kredit.jumlah as jumlah_kredit,
jurnal_umum_debet.kode_jurnal_umum as kode_jurnal_umum_debet,
table_nomer_rekening.nama_rekening as nama_rekening_debet,
table_nomer_rekening.kode_rekening as kode_rekening_debet,
tbl_rek_2.nama_rekening as nama_rekening_kredit,
tbl_rek_2.kode_rekening as kode_rekening_kredit

FROM 
table_jurnal_umum_main

LEFT JOIN jurnal_umum_debet
ON jurnal_umum_debet.id_jurnal_umum_debet = table_jurnal_umum_main.id_jurnal_umum_debet

LEFT JOIN jurnal_umum_kredit
ON jurnal_umum_kredit.id_jurnal_umum_kredit = table_jurnal_umum_main.id_jurnal_umum_kredit

LEFT JOIN table_keterangan
ON table_keterangan.id_keterangan = table_jurnal_umum_main.id_keterangan

LEFT JOIN table_nomer_rekening
ON table_nomer_rekening.id_rekening = jurnal_umum_debet.id_rekening

LEFT JOIN table_nomer_rekening tbl_rek_2
ON tbl_rek_2.id_rekening = jurnal_umum_kredit.id_rekening

WHERE 1
GROUP BY kode_jurnal_umum_debet 
ORDER BY table_jurnal_umum_main.created_at ASC