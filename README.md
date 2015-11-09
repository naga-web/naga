#Nāga: Erlang Web Framework (beta)
=================================

##NAGA == M, [V, C] + websocket on steroid (n2o), the M is up to you (boss_db, kvs, ...)

GOAL:
 - keep it small, fast, less dependencies as much as possible, 
 - NO PMOD, 
 - compiled module base for routing
 - bring ChicagoBoss flavour to n2o framework instead of bringing n2o to CB. (less code) 
 

# Requirements

- [Erlang/OTP](http://www.erlang.org) version >= 17,  require maps

# Get Started

  to create and build a naga application you need to install [mad](https://github.com/naga-framework/mad.git).

## Downloading

You can download mad directly from github:

    $ curl -O https://raw.githubusercontent.com/naga-framework/mad/naga_v2/mad

Then ensure it is executable

    $ chmod a+x mad

and drop it in your $PATH


## Build mad from source

```bash
    $ git clone https://github.com/naga-framework/mad.git
    $ cd mad
    $ make    
```

and drop it in your $PATH


## Create a Naga app:

  mad integrate a small template engine for creating naga app

    $ mad create name=<app_name> tpl=<tpl_name>

```bash
mad create name=toto tpl=hello port=9000
Name = "toto"
TplName = "hello"
Vars = [{port,"9000"},{tpl,"hello"},{name,"toto"}]
Writing toto/apps/toto/rebar.config
Writing toto/apps/rebar.config
Writing toto/rebar.config
Writing toto/vm.args
Writing toto/sys.config
Writing toto/apps/toto/src/toto.app.src
Writing toto/apps/toto/src/toto.erl
Writing toto/apps/toto/src/controller/index.erl
Writing toto/apps/toto/src/controller/error.erl
Writing toto/apps/toto/src/toto_routes.erl
Writing toto/apps/toto/src/view/index/index.html
Writing toto/apps/toto/src/view/error/404.html
OK
cd toto
mad deps comp plan repl
```  
