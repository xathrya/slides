# Hands-On

Reverse Engineering - Protecting & Breaking the Software

## Persiapan

instalasi package (Debian Wheezy)

```
$ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
$ echo "deb http://download.mono-project.com/repo/debian wheezy main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list
$ sudo apt-get update

$ sudo apt-get install mono-complete
```

Pelajari juga referensi [.NET CIL](https://github.com/ReversingID/LowLevelCode-Reference/tree/master/Codes/bytecode/net/cil)

## Dasar

Menggunakan monodis dan ilasm untuk melakukan disassembly dan assembly terhadap kode CIL.

```
$ monodis CrackMe.exe --output=CrackMe.cil
```

Ubah pesan "Personalize Crackme for Satria" menjadi personalize untuk diri sendiri (sebutkan sembarang nama).

Kompilasi ulang

```
$ ilasm /exe /output:CrackMe2.exe CrackMe.cil
```

## Solusi Challenges

#### [1] Hardcoded Value

Mencari hardcoded value, bisa dengan menelusuri CIL maupun dekompilasi.

`Opsi 1`: menggunakan CIL.

Telusuri file, dan cari fungsi perbandingan string untuk stage 1

```
$ monodis CrackMe.exe --output=CrackMe1.cil
```

- Fokuskan kepada pemanggilan fungsi `bool string::op_Equality(string, string)`. Perbandingan dua string ini membandingkan string di stack dan input.
- Cari argumen yang digunakan, yaitu string yang hasil dari instruksi `ldloc3`.
- Telusuri instruksi `ldstr` yang berada tepat sebelum `stloc.3`.

`Opsi 2`: menggunakan decompiler (dotPeek/JustDecompile/dnSpy)

Decompile dan cari perbandingan string

#### [2] Bypass Jump

Menganalisis dan mengubah flow aplikasi sehingga melewati sebuah percabangan.

`Opsi 1`: menggunakan CIL.

disassembly aplikasi.

```
$ monodis CrackMe.exe --output=CrackMe2.cil
```

Telusuri fungsi `stage2()` dan perhatikan bahwa terdapat percabangan dengan membandingkan nilai variabel `stage` dan 10. Ubah `bge IL_0019` menjadi `ble IL_0019` agar instruksi mengarah ke `IL_0019` meskipun nilai stage kurang dari 10.

kemudian bangun ulang aplikasi

```
$ ilasm /exe /output:CrackMe2.exe CrackMe2.cil
```

Alternatifnya, ubah `bge IL_0019` menjadi `br IL_0019`. Kemudian hapus tiga instruksi sebelumnya agar aplikasi tidak error. Kenapa seperti itu?

`Opsi 2`: menggunakan decompiler (dotPeek/JustDecompile/dnSpy)

Decompile dan cari perbandingan nilai di `stage2`. Lakukan perubahan pada kondisi perbandingan dan simpan sebagai `CrackMe2.exe`.

#### [3] Change Invoked Method

Menganalisis dan mengubah method yang dipanggil.

`Opsi 1`: menggunakan CIL.

Disassembly aplikasi.

```
$ monodis CrackMe2.exe --output=CrackMe3.cil
```

Telusuri fungsi `Main()` dan ubah pemanggilan ke `stage3()` menjadi `stage3_target()`.

Kemudian bangun ulang aplikasi

```
$ ilasm /exe /output:CrackMe3.exe CrackMe3.cil
```

`Opsi 2`: menggunakan decompiler (dotPeek/JustDecompile/dnSpy)

Decompile dan ganti pemanggilan `stage3()` di loop menjadi `stage3_target()`.

#### [4] User-Defined Method

Menambahkan kode baru ke aplikasi dan panggil.

`Opsi 1`: menggunakan CIL.

Salin file `CrackMe.cs` sebagai `Cheat.cs`.

Tambahkan method baru `stage4()`. Method ini harus memodifikasi variabel stage sehingga bernilai lebih dari 8 (misal 10). 

```
private bool stage4 ()
{
    stage = 10;
    return true;
}
```

Modifikasi loop pada fungsi `Main()` dan tambahkan pemanggilan method `stage4()` di bawah method `stage3()`.

```
                case 3:
                    loop = crackme.stage3();
                    break;
                case 4:
                    loop = crackme.stage4();
                    break;
```

lakukan kompilasi menjadi `Cheat.exe` dan disassembly.

```
$ mcs Cheat.cs 
$ monodis Cheat.exe --output=Cheat.cil
```

Perhatikan kode CIL yang berkaitan dengan `stage4()` dan pemanggilan `stage4()`.

Disassembly aplikasi.

```
$ monodis CrackMe3.exe --output=CrackMe4.cil
```

Tambahkan kode yang sesuai ke `CrackMe4.cil`.