# blog
rm -Rf blog
git clone https://github.com/gongbaodd/gongbaodd.github.io.git blog
cd blog
git checkout master
cd ..

# www
rm -Rf www
git clone https://github.com/gongbaodd/gongbushang.com.git www
cd www
git checkout master
cd ..

# graphics
rm -Rf graphics
git clone https://github.com/gongbaodd/webgl_demos.git graphics
cd graphics
git checkout master
cd ..

# css
rm -Rf css
git clone https://github.com/gongbaodd/css_playground.git css
cd css
git checkout master
cd ..
