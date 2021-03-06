desc 'Show all tasks availabe'
task :help do
  #Dir.chdir @chid_config.chid_rake_path
  #system("rake -T")
  puts "\nTell me what you need"

  a = <<MY
# Chid

**Note:** All tasks are available for **osx** and **linux**. The *chid* will automatically 
knows how run the specific **comand** for each plataform.

#### Install chid configuration

* `$ chid init` - Will install all necessary confiuration.

#### Start the app

* `$ chid` - To start the **chid** terminal app

**Note:** To run the commands listed bellow you must started the chid app.

#### Help

* `help` or `:h` - Show all tasks available

#### Quit

* `:q` or `quit` or `bye` or `exit` - Will finish the **chid** app

#### Currency

* `current` - Get the current conversion for USD to BRL amount
* `currency list` - Show all types of currencies available to convert
* `convert [amount] [type_from] to [type_to]` - You can convert an amount between 
types. Eg.: **convert 10 USD to BRL**

#### Install apps

**Note:** All install tasks, chid will always ask if you really want to install it. Also 
will install the dependencies if necessary.

* `install dotfiles` - Install [YADR Dotfiles](https://github.com/skwp/dotfiles)
* `install node` - Install Node
* `install postgres` - Install Postgres
* `install rvm` - Install stable RVM version

#### Run

* `run postgres` - Run the postgresql if you already have installed.

#### Update

* `update os` or `update` - Will update the linux os. For osx is not available

#### News

* `news` - Will show all news from some sites. BBC news, CNN, Espn, 
Mashable, Google, Techcrunch, Reddit

#### Translate

* `t [TEXT]` or `t [TEXT] [FROM] to [TO]` - Will translate the given text. By
default the **from** is **en** and **to** is **pt**

Example:
`t hello world` or `t hello world en to pt`

#### Search on StackOverflow

A simple search in StackOverflow 

* `stack [TEXT_TO_SEACH]` - Will search on StackOverflow all results for that 
text.

* `stack` - Will ask what you want to search on StackOverflow all results for that 
    
#### Search GitHub repositories

A simple search for repository name

* `github [SEARCH_EXPRESSION]` - Show results for expression paginated every 10
    
#### Workstations

Workstations are a way to make it easy for you to open a set of applications by 
simple commands.

The set of configurations are saved on **.chid.config** file.

**Note:** All commands bellow is possible run with prefix: `workstation [command]` 
or `work [command]`.

* `work list` - List all workstations
* `work create` - Create a new workstation. Chid will ask for a name to set the 
new workstation and after that will list all **applications** available on your 
system to chosse witch one you wanna add
* `work destroy` - Chid will ask which workstation you want to destroy and chid 
will destroy it after choose
* `work open` - Open a specific workstation. Chid will list all workstations to 
choose one of them to open all applications
* `work open [workstation_name]` - Open a specific workstation without choose 
from a list. Eg.: `work open base` - It will open all applications inside the 
**base** workstation

**Note:** For linux users the **work create** is not working. You need create 
manually (editing the .chid.config file). Will be explained how on
**How configure and customize your workstations** topic

#### Chid configuration

* `chid config` or `config` - Open the **.chid.config** file

## How configure and customize your workstations

The chid configuration file is installed on **~/.chid.config**. You can open: `$ chid 
chid_config`

Chid config is a **YAML** file.

You can create the workstations just adding on :workstations: key.

The initial chid config file will be like:

```YAML
---
:chid:
  :chid_path: "[CHID_FOLDER_PROJECT_PATH]"
  :workstations: {}
```

#### Base configuration

To add a new *workstation* you can edit like:

```YAML
---
:chid:
  :chid_path: "[CHID_FOLDER_PROJECT_PATH]"
  :workstations:
    :base: # Workstation Name
    - iTerm #Application Name
    - Safari
    - Slack
```

After edit you can open the **base** workstation running:

* `$ chid workstation:open['base']` - As rake task
* `work open base` - With the **chid** app running

#### Advance configuration

Is possible you can customize some options with each Application when will open it

 - Open the Terminal in a specific folder  
 - Open a Safari with a specific URL
 - Any options which your application can use

```YAML
---
:chid:
  :chid_path: "[CHID_FOLDER_PROJECT_PATH]"
  :workstations:
    :base: # Workstation Name
    - iTerm ~/Workspaces/rake-workspace/chid/ & rake tmux_config  # Will open 
    # in a specific folder and will run some Rake Task
    - Safari https://github.com/rachidcalazans/chid # Will open the Safari 
    # in a specific URL
```

MY

puts a

end


