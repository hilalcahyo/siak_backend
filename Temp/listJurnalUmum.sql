SELECT 
table_jurnal_umum_main.id_jurnal_umum_main,
table_keterangan.deskripsi_keterangan,
jurnal_umum_debet.jumlah,
jurnal_umum_debet.kode_jurnal_umum,
table_nomer_rekening.nama_rekening,
table_nomer_rekening.kode_rekening

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
WHERE 1