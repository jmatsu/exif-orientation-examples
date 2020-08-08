all: square portrait landscape

portrait: portrait-3-4 portrait-9-16

landscape: landscape-4-3 landscape-16-9

bundle_init:
	bash -c "cd generator && bundle config set path vendor/bundle && bundle install"

square: bundle_init
	curl --location "https://dummyimage.com/320x320/F00/FFF.jpg&text=square" --output ./square.jpg
	bash -c "cd generator && bundle exec ruby ./generate.rb ../square.jpg"
	rm -f ./square.jpg

portrait-3-4: bundle_init
	curl --location "https://dummyimage.com/270x3:4/0F0/FFF.jpg&text=portrait-4-3" --output ./portrait-3-4.jpg
	bash -c "cd generator && bundle exec ruby ./generate.rb ../portrait-3-4.jpg"
	rm -f ./portrait-3-4.jpg

portrait-9-16: bundle_init
	curl --location "https://dummyimage.com/270x9:16/0F0/FFF.jpg&text=portrait-9-16" --output ./portrait-9-16.jpg
	bash -c "cd generator && bundle exec ruby ./generate.rb ../portrait-9-16.jpg"
	rm -f ./portrait-9-16.jpg

landscape-4-3: bundle_init
	curl --location "https://dummyimage.com/320x4:3/00F/FFF.jpg&text=landscape-4-3" --output ./landscape-4-3.jpg
	bash -c "cd generator && bundle exec ruby ./generate.rb ../landscape-4-3.jpg"
	rm -f ./landscape-4-3.jpg

landscape-16-9: bundle_init
	curl --location "https://dummyimage.com/320x16:9/00F/FFF.jpg&text=landscape-16-9" --output ./landscape-16-9.jpg
	bash -c "cd generator && bundle exec ruby ./generate.rb ../landscape-16-9.jpg"
	rm -f ./landscape-16-9.jpg
