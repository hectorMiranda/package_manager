Package Manager Code Challenge

##Getting Started
### Clone this repository

```
git clone 
```

### Set up RVM and create a gemset

Follow this instructions to set up your initial development environment.

1. Install RVM
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash
```
2. Install 2.3.1 as the default
```
rmv install 2.3.1
```
3. Install bundler and dependencies
```
gem install bundler
bundle install
```

4. Change permissions to make application file executable
```
chmod +x program.rb
```
5. Run the application

```
./component_manager.rb
```
6. Run tests
```
rspec spec -f d
```
