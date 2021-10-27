call choco install -y dotnet vscode git onescript postman wireshark docker-desktop
call refreshenv
call code --install-extension 1c-syntax.language-1c-bsl
call code --install-extension evilbeaver.oscript-debug
call opm install opm
call opm install 1commands json 1connector 1testrunner 1bdd
call docker pull evilbeaver/oscript-web:0.9.0
call docker pull evilbeaver/onescript:1.6.0

pause