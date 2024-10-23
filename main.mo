import Float "mo:base/Float";

actor HesapMakinesi{

  public func toplama(sayi: Float, sayi2: Float): async Float{
  var sonuc: Float = 0.0;
  sonuc += sayi + sayi2;
  sonuc
 };

public func cikarma(sayi: Float, sayi2: Float): async Float{
  var sonuc: Float = 0.0;
  sonuc += sayi - sayi2;
  sonuc
 };

// Çarpma operatörü kullanarak oluşturduğum çarpma fonksiyonudur.
public func carpma(sayi: Float, sayi2: Float): async Float{
  var sonuc: Float = 0.0;
  sonuc += sayi * sayi2;
  sonuc
 };

// İki tamsayıyı çarpma operatörü kullanmadan oluşturduğum çarpma fonksiyonudur.
public func Tamsayi_Carpma(sayi: Int, sayi2: Int):async Int{
  var islem: Int = 0;
  var i: Int = 0;
  while(i < sayi2){
    islem += sayi;
    i += 1;
  };
  return islem;
 };

 // Bölme operatörü kullanarak oluşturduğum bölme fonksiyonudur.
public func bolme(sayi: Float, sayi2: Float): async ?Float{
  var sonuc: Float = 0.0;
 if(sayi2 == 0){
  null
 } else{
  sonuc += sayi / sayi2;
  ?sonuc
  };
 };

// İki tamsayıyı bölme operatörü kullanmadan oluşturduğum bölme fonksiyondur.
public func Pozitif_Tamsayi_Bolme(sayi: Int, sayi2: Int): async Int{
  if(sayi2 == 0){ 
    // Hata durumu
    return 0;
  };

  var cikar: Int = sayi;
  var count: Int = 0;

  while(cikar >= sayi2){
    count += 1;
    cikar -= sayi2;
  };
    return count;
  };

 // Tamsayıların birbirine bölümünden kalanı veren fonksiyondur.
public func Bolumden_Kalan(sayi: Int, sayi2: Int): async Int{
  if(sayi2 == 0){
    // Hata durumu
   return 0;
  };

  var cikar: Int = sayi;

  while(cikar >= sayi2){
    cikar -= sayi2;
  };
  
  return cikar;
 };

/*public func pow(sayi: Float, sayi2: Float):async Float{
  Float.pow(sayi, sayi2)
 };*/

 // Hazır pow fonksiyonunu kullanmadan oluşturduğum üs alma fonksiyonudur.
public func pow(taban: Float, us: Int):async Float{
  var pow_sonuc: Float = 1.0;
  var i: Int = 0;
  while(i < us){
    pow_sonuc *= taban;
    i += 1;
  };
  pow_sonuc
 };

public func faktoriyel(sayi: Int):async ?Int{
  var Faktoriyel: Int = 1;
  var i: Int = sayi;
  while(i > 1){
    Faktoriyel *= i;
    i -= 1;
  };
  if(sayi == 1 or sayi == 0){
    return ?1;
  }else if(sayi < 0){
    // Hata durumu
    null;
  }else{
   return ?Faktoriyel;
  };
 };

// Kendi oluşturduğum sin fonksiyonu için kullandığım faktöriyel fonksiyonudur.
func sin_faktoriyel(sayi: Int): Int{
  var Faktoriyel: Int = 1;
  var i: Int = sayi;
  while(i > 1){
    Faktoriyel *= i;
    i -= 1;
  };
  if(sayi == 1 or sayi == 0){
    return 1;
  }else if(sayi < 0){
    // Hata durumu
    return 0;
  };
   return Faktoriyel;
 };

// Kendi oluşturduğum sin fonksiyonu için kullandığım üs alma fonksiyonudur.
func sin_pow(taban: Float, us: Int): Float{
  var pow_sonuc: Float = 1.0;
  var i: Int = 0;
  while(i < us){
    pow_sonuc *= taban;
    i += 1;
  };
  pow_sonuc
 };
 
// Float.sin() fonksiyonu kullanmadan oluşturduğum sin fonksiyonudur.
// Sinüs fonksiyonu Taylor serisi açılımının tek dereceli terimlerinin yakınsanmasıyla oluşur.
public func sin(derece: Float): async Float {
      var toplam: Float = 0.0;
      let radyan = derece * (Float.pi / 180.0);
      var i: Int = 0;
      while (i < 10) {
        let taylorSerisi = sin_pow(-1.0, i) * sin_pow(radyan, 1 + 2*i) / Float.fromInt(sin_faktoriyel(1 + 2*i));
        toplam += taylorSerisi;
        i += 1;
      };
    return toplam;
  };


/*public func sin(sayi: Float): async Float{
  let radyan = sayi * (Float.pi/180.0); // derece olarak alınan değeri radyan değerine dönüştürdüm.
  Float.sin(radyan)
 };*/

public func cos(derece: Float): async Float{
  let radyan = derece * (Float.pi/180.0);
  Float.cos(radyan)
 };

public func tan(derece: Float): async Float{
  let radyan = derece * (Float.pi/180.0);
  Float.tan(radyan)
 };

public func temizle(): async (){
  var sonuc: Float = 0.0;
  sonuc := 0;
 };

};
