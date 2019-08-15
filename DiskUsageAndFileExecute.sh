#! bin/bash

read -p "Disk yönetimini görüntülemek için 1'e script'i çalıştırmak için 2'ye basınız." secim
if [ $secim = "1" ]
then
    cd 
    cd #/dizin  ##Çalıştırmak istediğiniz dosyanın dizini.
    du -ah    ##Dosyanın bulunduğu dizindeki dosyaların diskte kapladıkları alan görüntülenir. 
elif [ $secim = "2" ]
then
    cd
    cd #/dizin
    chmod +x #dosyaismi ##Çalıştırmak istediğimiz dosyaya çalıştırma(execute) yetkisi veriyoruz.
    bash #dosyaismi  ##Dosyayı çalıştırma komutu.
    if [ $? -eq 0 ]  ## $? : Son çalıştırılan komutun çıkış değerini döndürür. Bu değer 0'a eşitse kod doğru çalışıyor anlamındadır.
    then
        echo "Doğru çalışmaktadır."
    else
        echo "Oluşturduğunuz script hata vermektedir."
    fi
fi
