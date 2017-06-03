# AWS Rekognition Getting Started

### Commandline Tool

Need the latest version of the [AWS CLI](https://aws.amazon.com/cli/) 

### Create Bucket

Not immediately evident - you have to create a bucket in the same region of the Rekognition endpoint. I chose us-west-2.

### Query Rekognition using CLI

`aws rekognition detect-labels --image='{"S3Object": { "Bucket": "uli-rekognition", "Name": "tmp/myfile.png" } }' --region=us-west-2`

A little tricky when using shell scripting with loops and parsing, had to escape the string. Assuming that all files are uploaded into S3:

`aws rekognition detect-labels --image="{\"S3Object\": { \"Bucket\": \"uli-rekognition\", \"Name\": \"tmp/$file\" } }" --region=us-west-2`

### Testing with some of my Instagram Favourites

![](http://cdn.sotong.io/instafav/100x100/thb_07031263acdba7de988c0c7a195b1814.jpg)  
File: 07031263acdba7de988c0c7a195b1814.jpg  
Tags: Clam Food Oyster Sea Life Fries  

![](http://cdn.sotong.io/instafav/100x100/thb_0ad95407155de231ce5963ba2d5bbddd.jpg)  
File: 0ad95407155de231ce5963ba2d5bbddd.jpg  
Tags: Mailbox Postbox Bicycle Bike Vehicle  

![](http://cdn.sotong.io/instafav/100x100/thb_0f667d1bfc0b640fdaf8ea468672d888.jpg)  
File: 0f667d1bfc0b640fdaf8ea468672d888.jpg  
Tags: Cup Beverage Drink  

![](http://cdn.sotong.io/instafav/100x100/thb_19973f3ed4447c88285ecb93d9d557e2.jpg)  
File: 19973f3ed4447c88285ecb93d9d557e2.jpg  
Tags: Citrus Fruit Fruit Grapefruit Pomelo  

![](http://cdn.sotong.io/instafav/100x100/thb_1c943572e56a1e17a7940380230ef669.jpg)  
File: 1c943572e56a1e17a7940380230ef669.jpg  
Tags: Animal Deer Mammal Wildlife  

![](http://cdn.sotong.io/instafav/100x100/thb_1e06c2fefb950f2eb8d164bd4767ad3a.jpg)  
File: 1e06c2fefb950f2eb8d164bd4767ad3a.jpg  
Tags: Spiral Architecture Dome  

![](http://cdn.sotong.io/instafav/100x100/thb_1eee459b167657f9e421125d31ad1c9e.jpg)  
File: 1eee459b167657f9e421125d31ad1c9e.jpg  
Tags: Animal Giraffe Mammal  

![](http://cdn.sotong.io/instafav/100x100/thb_2a357948acda92ee88d3de0a0212daeb.jpg)  
File: 2a357948acda92ee88d3de0a0212daeb.jpg  
Tags: Indoors Library Room  

![](http://cdn.sotong.io/instafav/100x100/thb_2abb761fdabcf81a909b9b52ae69659f.jpg)  
File: 2abb761fdabcf81a909b9b52ae69659f.jpg  
Tags: Chair Furniture  

![](http://cdn.sotong.io/instafav/100x100/thb_2d5c8c0ac30a1d6b6cd7b01b02c03d37.jpg)  
File: 2d5c8c0ac30a1d6b6cd7b01b02c03d37.jpg  
Tags: Computer Electronics LCD Screen Laptop Pc Apartment Housing Indoors Room  

![](http://cdn.sotong.io/instafav/100x100/thb_2f7c66901b79ab8e88c8102c5e52b7ff.jpg)  
File: 2f7c66901b79ab8e88c8102c5e52b7ff.jpg  
Tags: Chair Furniture  

![](http://cdn.sotong.io/instafav/100x100/thb_2ff2243f34a608791ad8cf888fecaffd.jpg)  
File: 2ff2243f34a608791ad8cf888fecaffd.jpg  
Tags: Billboard  

![](http://cdn.sotong.io/instafav/100x100/thb_34f2b03d05c853a1552bb3b49e0a14fa.jpg)  
File: 34f2b03d05c853a1552bb3b49e0a14fa.jpg  
Tags: Plant Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_35b2e484426e9af45b0d111a4f5d8fd2.jpg)  
File: 35b2e484426e9af45b0d111a4f5d8fd2.jpg  
Tags: Palm Tree Plant Tree Beach Coast Outdoors Sea Water  

![](http://cdn.sotong.io/instafav/100x100/thb_377e4c0858951c64e732e36e98cbd06f.jpg)  
File: 377e4c0858951c64e732e36e98cbd06f.jpg  
Tags: Forest Jungle  

![](http://cdn.sotong.io/instafav/100x100/thb_447b145bc6e096ad7e1a689f99fe0703.jpg)  
File: 447b145bc6e096ad7e1a689f99fe0703.jpg  
Tags: Boat Gondola  

![](http://cdn.sotong.io/instafav/100x100/thb_452996c077648611c2a5000035a3af43.jpg)  
File: 452996c077648611c2a5000035a3af43.jpg  
Tags: Palm Tree Plant Tree  

![](http://cdn.sotong.io/instafav/100x100/thb_53fca2d0e4cf559b901add492e066b02.jpg)  
File: 53fca2d0e4cf559b901add492e066b02.jpg  
Tags: Cable Car Trolley Vehicle  

![](http://cdn.sotong.io/instafav/100x100/thb_5516fa555799e61515a65a20392079b8.jpg)  
File: 5516fa555799e61515a65a20392079b8.jpg  
Tags: Building Housing Villa  

![](http://cdn.sotong.io/instafav/100x100/thb_5d220de3354abe14bb55591c900e396e.jpg)  
File: 5d220de3354abe14bb55591c900e396e.jpg  
Tags: Beverage Drink  

![](http://cdn.sotong.io/instafav/100x100/thb_60a12e76b54fea2606a99365e5f4b404.jpg)  
File: 60a12e76b54fea2606a99365e5f4b404.jpg  
Tags: Cup  

![](http://cdn.sotong.io/instafav/100x100/thb_645cc11659c470bdd8a2e5f42963f71d.jpg)  
File: 645cc11659c470bdd8a2e5f42963f71d.jpg  
Tags: Chair Furniture Cafeteria Restaurant  

![](http://cdn.sotong.io/instafav/100x100/thb_656c49314354bf30ea1675e9c958d222.jpg)  
File: 656c49314354bf30ea1675e9c958d222.jpg  
Tags: Alley Alleyway Road Street Town  

![](http://cdn.sotong.io/instafav/100x100/thb_73011751645ccde255588ee466f1e5bc.jpg)  
File: 73011751645ccde255588ee466f1e5bc.jpg  
Tags: People Person Human  

![](http://cdn.sotong.io/instafav/100x100/thb_7472c72c28263994836b20cfda996bd3.jpg)  
File: 7472c72c28263994836b20cfda996bd3.jpg  
Tags: Bowl  

![](http://cdn.sotong.io/instafav/100x100/thb_7bfa60bad37ed9a284d97f5a1416cc05.jpg)  
File: 7bfa60bad37ed9a284d97f5a1416cc05.jpg  
Tags: Architecture Castle Fort City Downtown  

![](http://cdn.sotong.io/instafav/100x100/thb_7d7ad598d95231bcb49e3e004abe1e74.jpg)  
File: 7d7ad598d95231bcb49e3e004abe1e74.jpg  
Tags: Food French Toast Toast Ketchup Seasoning  

![](http://cdn.sotong.io/instafav/100x100/thb_80c3b0cc70747e1955617ccf51a381ef.jpg)  
File: 80c3b0cc70747e1955617ccf51a381ef.jpg  
Tags: Garlic Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_844a1120000ea59ed80af98a81c3d7af.jpg)  
File: 844a1120000ea59ed80af98a81c3d7af.jpg  
Tags: People Person Human  

![](http://cdn.sotong.io/instafav/100x100/thb_8643449d7b737f58a96b97e63dd8969a.jpg)  
File: 8643449d7b737f58a96b97e63dd8969a.jpg  
Tags: People Person Human Goggles  

![](http://cdn.sotong.io/instafav/100x100/thb_8693ce3d2962d48202e8be8d4a885d9c.jpg)  
File: 8693ce3d2962d48202e8be8d4a885d9c.jpg  
Tags: Architecture Housing Skylight Window  

![](http://cdn.sotong.io/instafav/100x100/thb_94dc31a6ac12d9851b3058df608c5dd6.jpg)  
File: 94dc31a6ac12d9851b3058df608c5dd6.jpg  
Tags: Bridge  

![](http://cdn.sotong.io/instafav/100x100/thb_990f6c767ed5e54689a9f26e94fcdc08.jpg)  
File: 990f6c767ed5e54689a9f26e94fcdc08.jpg  
Tags: People Person Human  

![](http://cdn.sotong.io/instafav/100x100/thb_9b60e42e0f86fee89c24dfe78680768e.jpg)  
File: 9b60e42e0f86fee89c24dfe78680768e.jpg  
Tags: Brochure Flyer Poster Collage  

![](http://cdn.sotong.io/instafav/100x100/thb_9d68bc4104b4e56867b1dd98b213b2fe.jpg)  
File: 9d68bc4104b4e56867b1dd98b213b2fe.jpg  
Tags: Boat Gondola  

![](http://cdn.sotong.io/instafav/100x100/thb_a0ae949da7eac582ebff1467e2e6fa34.jpg)  
File: a0ae949da7eac582ebff1467e2e6fa34.jpg  
Tags: Food Steak  

![](http://cdn.sotong.io/instafav/100x100/thb_a14d697739b98a1ae3f234cde4c81622.jpg)  
File: a14d697739b98a1ae3f234cde4c81622.jpg  
Tags: Bird Macaw Parrot People Person Human  

![](http://cdn.sotong.io/instafav/100x100/thb_a7e9d61968fdfe6f7dacfc913b025f50.jpg)  
File: a7e9d61968fdfe6f7dacfc913b025f50.jpg  
Tags: Buddha Person Shrine Temple  

![](http://cdn.sotong.io/instafav/100x100/thb_aa32e0944a175d7eb5d56a322ce29522.jpg)  
File: aa32e0944a175d7eb5d56a322ce29522.jpg  
Tags: Conference Room Indoors Meeting Room Room Dining Table Furniture Table Aircraft Airplane Chair  

![](http://cdn.sotong.io/instafav/100x100/thb_ae39bee7c0ff819a35e75f971f842e2c.jpg)  
File: ae39bee7c0ff819a35e75f971f842e2c.jpg  
Tags: Plant Tree Building Housing Villa Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_af5e50e1a26381c4e095d8445613782e.jpg)  
File: af5e50e1a26381c4e095d8445613782e.jpg  
Tags: People Person Human Art Sculpture Statue Architecture Shrine Temple Worship  

![](http://cdn.sotong.io/instafav/100x100/thb_afa7b4331eee604b26ebbd9b7b3c92a0.jpg)  
File: afa7b4331eee604b26ebbd9b7b3c92a0.jpg  
Tags: Plant Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_afbafb00461732db79672f246eca9321.jpg)  
File: afbafb00461732db79672f246eca9321.jpg  
Tags: Architecture Shrine Temple Worship Ivy Plant Vine  

![](http://cdn.sotong.io/instafav/100x100/thb_b41aa43f72a208488855610b5eabc600.jpg)  
File: b41aa43f72a208488855610b5eabc600.jpg  
Tags: Plant Potted Plant Ivy Vine  

![](http://cdn.sotong.io/instafav/100x100/thb_c037f999ac5e0d0c5965c0142fa5cbe6.jpg)  
File: c037f999ac5e0d0c5965c0142fa5cbe6.jpg  
Tags: Building Housing Villa Plant Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_c8426b4e049756207d39a218f3aaefc1.jpg)  
File: c8426b4e049756207d39a218f3aaefc1.jpg  
Tags: Automobile Car Vehicle  

![](http://cdn.sotong.io/instafav/100x100/thb_d6b2fd7b1a6438c39a5e7277c28084fe.jpg)  
File: d6b2fd7b1a6438c39a5e7277c28084fe.jpg  
Tags: Dawn Dusk Red Sky Sky Sunrise Sunset  

![](http://cdn.sotong.io/instafav/100x100/thb_df04f60f9738dccbd2f943114717abca.jpg)  
File: df04f60f9738dccbd2f943114717abca.jpg  
Tags: Belt Carousel  

![](http://cdn.sotong.io/instafav/100x100/thb_e435a550c9855f0032a8ff26fc2d8924.jpg)  
File: e435a550c9855f0032a8ff26fc2d8924.jpg  
Tags: People Person Human Plant Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_e679f462d353529a43643d17e2a9c395.jpg)  
File: e679f462d353529a43643d17e2a9c395.jpg  
Tags: Airport Terminal Terminal  

![](http://cdn.sotong.io/instafav/100x100/thb_e78953f1798626b31af3da63fce29808.jpg)  
File: e78953f1798626b31af3da63fce29808.jpg  
Tags: People Person Human Chair Furniture Aircraft Airplane  

![](http://cdn.sotong.io/instafav/100x100/thb_e98347aab1484f46e5b5bf31a35143d9.jpg)  
File: e98347aab1484f46e5b5bf31a35143d9.jpg  
Tags: Clam Food Oyster Sea Life  

![](http://cdn.sotong.io/instafav/100x100/thb_ed256e3062d5207988288bdd888e3965.jpg)  
File: ed256e3062d5207988288bdd888e3965.jpg  
Tags: Couch Furniture Cup Plant Potted Plant  

![](http://cdn.sotong.io/instafav/100x100/thb_efe43152274e9fce7e93dc78181340c3.jpg)  
File: efe43152274e9fce7e93dc78181340c3.jpg  
Tags: Dining Table Furniture Table  

![](http://cdn.sotong.io/instafav/100x100/thb_f75c5d5f7fa99cf1207de8a32dd07aca.jpg)  
File: f75c5d5f7fa99cf1207de8a32dd07aca.jpg  
Tags: City Downtown Metropolis Urban  

![](http://cdn.sotong.io/instafav/100x100/thb_fc471b4facc33aac324ce1207a5c788d.jpg)  
File: fc471b4facc33aac324ce1207a5c788d.jpg  
Tags: Beach Coast Outdoors Sea Water