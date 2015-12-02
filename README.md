
![](developers.png)

# HealthDev

### Self-service developer bootstrapping in minutes

Bootstrap your Mac OS X workstation into a developer Nerdvana Chef cookbook development environment.

## [Quickstart](id:quickstart)

Copy the command below and paste it into a terminal. This will download and run the [bootstrap](https://raw.githubusercontent.com/riddopic/healthdev/master/bootstrap) script on your workstation.

```shell
curl https://raw.githubusercontent.com/riddopic/healthdev/master/bootstrap | bash
```

#### Using a Web Cache or Proxy server

To use a web cache or proxy server such as Squid or Polipo, set the `http_proxy` environment variables:

```shell
export http_proxy=http://myproxy.example.com:1234
export https_proxy=$http_proxy
export no_proxy='localhost,127.0.0.1,example.com'
```

*To make these changes permanent, export these environment variables from your bash or zsh profile.*

Now run the [Quickstart](#quickstart)

## Hacking

If you want to use your own custom hacker cookbook, add the name of your cookbook and the source to these commands instead of the original [Quickstart](#quickstart) (examples included below).

```shell
curl https://raw.githubusercontent.com/riddopic/healthdev/master/bootstrap | bash -s -- <your cookbook name> <your cookbook url>
```

## What does it do?

This will install the following:

 - [Git](http://git-scm.com/) - command line git client and tools.
 - [Virtualbox](https://www.virtualbox.org/) - Oracle's free, open source virtualization tool for local cookbook testing.
 - [Vagrant](https://www.vagrantup.com/) - ChefDK's included [Test Kitchen](http://kitchen.ci) tool uses Vagrant to spin up local VMs for cookbook testing.
 - [homebrew](http://brew.sh) - a package manager for OS X.
 - [iTerm2](https://www.iterm2.com) - powerful OS X terminal.
