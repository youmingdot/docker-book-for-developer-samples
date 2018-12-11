FROM logstash:5.6.3

RUN apt-get update \
 && apt-get install -y --no-install-recommends ruby \
 && rm -rf /var/lib/apt/lists/*

RUN gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ \
 && sed -i 's/rubygems/ruby.taobao/g' /usr/share/logstash/Gemfile \
 && /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc