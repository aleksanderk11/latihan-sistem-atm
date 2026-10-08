import 'dart:io';

void main(){
  var ceklogin = true;
  var jalan = true;
  var pin = 112233;
  var saldo = 2000000;
  login(){
    stdout.write('Masukan Pin Anda : \n');
    int inputpinuser = int.parse(stdin.readLineSync()!);
    // tanya user : Pin Anda
    // inputpinuser
    // jika pin sama dengan inputpinuser
    // maka ceklogin jadikan false

    if (inputpinuser == pin) {
      ceklogin = false;
    } else {
      print('Password Anda Salah!');
    }
  }

  tampilmenu() {
    print('=======================================');
    print('SISTEM ATM SERBA ADA');
    print('=======================================');
    print('1. Cek Saldo');
    print('2. Setor Tunai');
    print('3. Tarik Tunai');

    
    // tampil 3 jenis menu (Cek saldo, Setor Tunai, Tarik Tunai)
  }

  ceksaldo() {
    print('Total Saldo Anda : Rp.$saldo');
    // tampilkan saldo
  }

  setor() {
    stdout.write('Silahkan Masukkan Jumlah Setoran : \n');
    int setor = int.parse(stdin.readLineSync()!);
    
    saldo = saldo + setor;
    // tanya user setor berapa?
    // saldonya di tambahkan dengan inputuser
  }

  tarik() {
    int totalpecahan50 = 0 ;
    int totalpecahan100 = 0;
    int sisa = 0;

    stdout.write('Silahkan Masukkan Jumlah Tarikan : \n');
    int tariktunai = int.parse(stdin.readLineSync()!);
    
    print('Pecahan Tunai');
    print('1. Pecahan Rp.50.000');
    print('2. Pecahan Rp.100.000');
    stdout.write('Silahkan Pilih Pecahan (1/2) : \n');
    int pecahan = int.parse(stdin.readLineSync()!);

  
    if (pecahan == 1) {
      totalpecahan50 = tariktunai ~/ 50000;
      print('Rp.50.000 * $totalpecahan50');
      saldo = saldo - tariktunai;
    } else if (pecahan == 2) {
      totalpecahan100 = tariktunai ~/ 100000;
      sisa =  tariktunai - (totalpecahan100 * 100000);
      totalpecahan50 = sisa ~/ 50000;
      print('Rp.100.000 * $totalpecahan100 \n Rp.50.000 * $totalpecahan50');
      saldo = saldo - tariktunai;
    } else {
      print('Pilih antara 1 atau 2');
    }
  
    // tanya user tarik berapa?
    // tanya user pecahan 50 atau 100?
    // ~/ > pembagian bulat contoh jika hasil bagi 2.5 bulat jadi 2 (pembulatan ke bawah)
  }

  while(jalan == true) {
    if (ceklogin == true) {
      login();
    } else {
      tampilmenu();
      
    stdout.write('Pilih Menu antara (1/2/3)! \n');
    int pilihan = int.parse(stdin.readLineSync()!);
      switch (pilihan) {
        case 1:
          ceksaldo();
        case 2:
          setor();
        case 3:
          tarik();
      }
      // tanya user menu yang mana?
      // switch case
      // case 1 : cek saldo();
      // case 2 : setor();
      // case 3 : tarik();
    }
    
    // jika ceklogin samadengan true
    // maka jalankan login()
    // sebaliknya jalankan menu

  }
  
}