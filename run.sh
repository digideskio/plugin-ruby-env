echo "start install ruby env"

\curl https://raw.githubusercontent.com/rvm/rvm/master/binscripts/rvm-installer | bash -s stable

source /etc/profile.d/rvm.sh

mkdir -p /root/.rvm/user/

# add mirror 
echo "ruby_url=https://cache.ruby-china.org/pub/ruby" > ~/.rvm/user/db

rvm install 2.3.0 --disable-binary

rvm use 2.3.0 --default

ruby -v
gem install bundler