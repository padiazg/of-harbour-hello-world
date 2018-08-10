REQUEST HB_GT_CGI_DEFAULT

PROCEDURE Main()
    LOCAL hStdIn  := hb_GetStdIn()  // get stdin file handler
    LOCAL hStdOut := hb_GetStdOut() // get stdout file handler

    LOCAL nLen    := 0              // bytes read from stdin
    LOCAL cBuffer := Space(1024)    // data read from stream
    LOCAL cData   := ""             // accumulated data read
    LOCAL cOutput                   // result string

    /* Reading input stream */
    DO WHILE ( nLen := FRead( hStdIn, @cBuffer, hb_BLen( cBuffer ) ) ) > 0
        cData += hb_BLeft( cBuffer, nLen )
    ENDDO

    // put your process here
    cData = Trim(cData)
    cOutput := "Hello from Harbour " + iif(hb_BLen(cData) == 0, "world!", cData) 

    // write stream, return result string
    FWrite(hStdOut, cOutput)
RETURN
