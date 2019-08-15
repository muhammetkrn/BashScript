#! bin/bash
read -p "Birinci sayiyi giriniz : " sayi1
read -p "İkinci sayiyi giriniz : " sayi2
read -p "Bir işlem giriniz : (top/cık/carp/bol)" islem

if [ $islem = "top" ]
then
        echo "Sonuc : " $(($sayi1 + $sayi2))
elif [ $islem = "cık" ]
then
        echo "Sonuc : " $(($sayi1 - $sayi2))
elif [ $islem = "carp" ]
then
        echo "Sonuc : " $(($sayi1 * $sayi2))
elif [ $islem = "bol" ]
then
        echo "Sonuc : " $(($sayi1 / $sayi2))
else
        echo "Lütfen geçerli bir islem giriniz."
fi
