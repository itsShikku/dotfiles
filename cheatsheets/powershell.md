Test-ComputerSecureChannel -Repair -Server <Name-des-Domänencontrollers> -Credential (get-credential) :: Vertrauensstellung wiederherstellen zum Domänencontroller
gpupdate /force :: Gruppenrichtlinien forcen
gpresult /h .html :: Richtlinien als User abfragen
