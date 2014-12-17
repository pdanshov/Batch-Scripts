                    ,i7Lv;:                                                                                                          
                    iU7:.      .:J5@B@B@B@B@BMFi                                                                                                      
                  kB@B@,     U@@@@@BBqNXXF51SF0Gqr                                                                                                    
                i@B@B@BM      rPB@B@BM7r7vrrii:iiYj,                .7FMB@B@B@B@B@B@M0           iUMB@@@B@@@B@827i        Z@@@B@@i                    
               L@@@B@B@B@        8@OOBB,,::.... ...;:            L@B@@@B@B@B@B@B@B@B@B.        G@B@B@B@B@GBB@B@B@q        @B@B@B@r                    
              :@B@MMOBB@@         88N0BZ            :.        :@@@@@B@B0;.         iP@.      .B@B@B@B.        7r          M@B@B@Bi                    
              @B@MMM@B@7         FM02N@B             :       E@B@B@B@:                       :@@@B@B@r                    MB@B@B@:                    
              B@@@MG8M;          5SXPOO@v            :      Z@B@@@BM                          i@B@B@B@B@B@XY:.            M@B@B@B:                    
             .rY@q              :,rMM8BBS            .      @@@B@B@                              rqB@B@B@B@B@B@Bq:        M@@B@B@:                    
             ,  rE             :ivuB@BB@L            i      B@B@B@BU                                   ,rSB@B@B@B@@       M@B@B@B:                    
              .  M@ku2P:      :rY2NO@B@@    . ..,,:.ir       B@B@B@BP                                       @@@B@B@Z      M@@B@B@:                    
              , .@B@@@B@    .irJFZO@B@@N  .,::iiir;vN         S@B@B@B@8r            ;B.      :LMBB.         B@B@B@Bi      M@B@B@@:                    
                vB@B@@@B. .:rv2S8M@B@BM  .::rrvvYjqM:           7B@B@B@B@B@BMZ8M@B@B@B.     :B@@@B@B@Z5j58@B@B@B@B:       @@@B@B@i                    
                 7M@B@B@L rLuPZMB@B@@k  ,:i7v25NM@O.               ,LOB@@@@@B@B@@@B@B@         rq@B@B@B@B@B@B@Oj.         B@B@B@B7                    
                  .,:uMB@U10MB@@@@@O.  ,irJuPO@B@7                        .,::::.                    ,:::,.                                           
                    :75@B@@@B@B@B2:  .:rYXG@B@k:                                                                                                      
                        ,rLvv:.      .:::i:.                                                                                                          
                                                                                                                                                      
                                                                                                                                                      

			.:...,.,.,...,.. OBZU77@BFivj@@ q@000@B      OB. @@:   .BU 0B000rG B@000@@. P@000FS B@000U5.,:,:::
			..........,.,.. .E.   .B@    rr @@  .@@     @iMB  @B  :@:  M@.:..  B@   @B. 7B@qr   @M,;::.,::::::
			.,...,.,.,.,,..,..    r@B       BMi@B,  . i@0:r@u .@U:8.   @E002: .@SiB@:  :  .JM@,,@7001.,,::::,
			,,,...,.,.:,. .....   GBS  .,  7@r .@BL..F@,   O@: u@2  . 7Bu;:;...uBr :B@v q@,,.7BiZ@: .,::.:::,
			.:.,...,,,.,,.,. .    B@r  .:.,LUi   JPvYML .  i2u  :    .:0000ir,:00   rY0::00000 i00ii77 ..,::
				. . .   ..  . @B. . .,,   ..        .                       ..,,..:...,....   ... . .
			 .         . . . . . 2B@                   ,,::::;r7vJJU2S5kkXqNSPNENZN0N0P0PqqNqENNqqPPS0qi 
			... . . . . . . .  ,7jULi       .,:ir7u1qNOM@B@B@B@@@B@B@B@B@B@B@B@B@B@B@B@B@B@B@BBMMOOGOB@M
			 .   . . . .             .:7jqG@B@@@B@B@B@BBOO0q1UjuLY7777rrr7rr7L7vvLLuuuuFk0EOM@B@B@B@BM7
			 ..     . .       ,iLUEM@B@@@OEF2vr:,....                                           
			.:.,,,.     .:rYukkkuYri,.                     


Changes (v.2.0 - 12.16.14)
Peter Danshov
Updated PrintChecks.repx & PrintChecksExtended.repx to not display Account Number field in the upper-left
the most current version of these files can be found in the subfolder "Account Code Fix"


To Install:


Copy:
	CSI.VM.ApChecksPrint.dll
	PrintChecks.repx
	PrintChecksExtended.repx
	Checks.xsd
	PrintChecks.xsd

To the Traverse directory (usually C:\Program Files\Open Systems, Inc\TRAVERSE)

Open Traverse and navigate to:

	System Manager -> Setup and Maintenance -> Application Menus -> Main Menu -> Accounts Payable -> Pay Invoices

Check that there exists the following entry:

	Description	    Type	Menu ID	   Document   Assembly Name		Plugin Name           Order     App     Hide     Menu Type     Parameter
	Print Checks CSI    Form	1050414    	      CSI.VM.ApChecksPrint.dll  ApPrintChecksPlugin   62	AP		 Company
					1050409

Setup:

	Windows 7 - Add MICR.ttf font (for magnetic stripe on check) to C:\Windows\Fonts

	Navigate to:
		Traverse -> Bank Reconciliation -> Setup and Maintenance -> Bank Accounts
	
	Set "Check Layout" to "Check/extended stub" and "Use MICR" options for selected "Bank Account ID" 
		(See screenshot - "Bank Account Setup.png")







































