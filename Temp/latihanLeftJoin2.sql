SELECT * FROM `table_jurnal_umum_main`
LEFT JOIN jurnal_umum_kredit ON 
table_jurnal_umum_main.id_jurnal_umum_kredit = jurnal_umum_kredit.id_jurnal_umum_kredit
LEFT JOIN table_nomer_rekening ON
jurnal_umum_kredit.id_rekening = table_nomer_rekening.id_rekening
WHERE jurnal_umum_kredit.kode_jurnal_umum = 'A10' ORDER BY table_jurnal_umum_main.created_at DESC