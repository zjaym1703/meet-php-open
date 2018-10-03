:: Why? because windows can't do an OR within the conditional
IF NOT DEFINED TOKBOX_API_KEY GOTO defkeysecret
IF NOT DEFINED TOKBOX_SECRET GOTO defkeysecret
GOTO skipdef

:defkeysecret

SET TOKBOX_API_KEY=46191302
SET TOKBOX_SECRET=e077924487e0175ec8d5c9344a3dd050c8120470

:skipdef

RD /q /s storage

php.exe -S localhost:8080 -t web web/index.php
