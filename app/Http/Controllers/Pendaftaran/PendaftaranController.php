<?php

namespace App\Http\Controllers\Pendaftaran;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
Use App\Models\Student;

class PendaftaranController extends Controller
{
    public function index(){
        return view('pendaftaran');
    }

    public function store(Request $request){
        // Validasi data yang diterima dari form
        $request->validate([
            'nama_lengkap'   => 'required|string|max:255',
            'email'          => 'required|email|unique:students,email',
            'jalur'          => 'required|string',
            'image'          => 'required|image|mimes:jpg,jpeg,png|max:2048',
            'nama_panggilan' => 'required|string|max:255',
            'nomor_hp'       => 'required|string|max:15',
            'program_studi_1'=> 'required|string',
            'program_studi_2'=> 'nullable|string',
        ]);

        // Mengupload image dan menyimpan nama file
        $fotoName = null; // Inisialisasi variabel fotoName
        if ($request->hasFile('image')) {
            // Mendapatkan nama file yang unik
            $fotoName = time() . '_' . $request->file('image')->getClientOriginalName();
            
            // Simpan file di storage dengan path yang tepat ✔
            $path = $request->file('image')->storeAs('uploads/students', $fotoName, 'public');

            // Debugging: cek apakah file disimpan ✔
            if (!$path) {
                return back()->with('error', 'Gambar gagal disimpan!');
            }
        }

        // Menyimpan data pendaftaran ke dalam database
        Student::create([
            'namalengkap'    => $request->namalengkap,
            'email'          => $request->email,
            'jalur'          => $request->jalur,
            'image'          => $fotoName, // Menyimpan nama file
            'namapanggilan'  => $request->namapanggilan,
            'nomor_hp'       => $request->nomor_hp,
            'programstudi_1' => $request->programstudi_1,
            'programstudi_2' => $request->programstudi_2,
        ]);

        return back()->with('success', 'Data berhasil ditambahkan!');
    }
    
}
