# spyinstall

<img alt="GitHub top language" src="https://img.shields.io/github/languages/top/svenadler-diva-e/spyinstall?color=%2341b806"> <img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/svenadler-diva-e/spyinstall?color=%2398579e"> <img alt="GitHub repo file count" src="https://img.shields.io/github/directory-file-count/svenadler-diva-e/spyinstall">

Bash script to install Spryker demo shop and select either production or development mode.


You are invited to further develop and contribute to this very simple and unfinished script. Thank you!


## Installation 

<em>Watch out!</em> When the script runs, all running Docker containers will be stopped<br />

Clone the Repository:<br />
`$ git clone https://github.com/svenadler-diva-e/spyinstall.git`

Ignore `prespy.sh` for now and make `spyinstall.sh` executable with:<br />
`$ chmod +x spyinstall.sh`

Now you can run the script with either<br />
`$ sh spyinstall.sh -p` for production mode<br />
or<br/>
`$ sh spyinstall.sh -d` for development mode<br />

Then use <br /> 
`$ docker/sdk up` to start the application.<br />
Go to http://spryker.local/ and select the desired link.






