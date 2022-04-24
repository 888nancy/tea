
<html>
    <head>
        <style>
            
            #div{
                height:10%;
                width:30%;
                background-color:blue;
            }
            #captchaCode{
				width:100px;
				height:40px;
				color:red;
				font-size:30px;
				font-family:chiller;
				margin:0 auto;
				background:grey;
                                margin-left: 10px;
                                margin-bottom:100px;
			}
                        div{
                            background-color:pink;
                            margin-bottom:0px;
                            width: 30%;
                        }
        </style>
        <script>
			function captcha()
			{
			
cap="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

	a=Math.floor((Math.random()*cap.length));
	
	b=Math.floor((Math.random()*cap.length));
	
	c=Math.floor((Math.random()*cap.length));
	
	d=Math.floor((Math.random()*cap.length));
	
	e=Math.floor((Math.random()*cap.length));
	
	f=Math.floor((Math.random()*cap.length));
	
	captch=cap[a]+cap[b]+cap[c]+cap[d]+cap[e]+cap[f];
	
		document.getElementById("captchaCode").innerHTML=captch;
	
			}
		</script>
    </head>
    <body onload="captcha()">
        
        <div id="div">
            <h1>Login</h1>
        </div><div><form action ="piclogserv" method ="post">
            <table>
                <tr><td>
                    User Id
                    </td>
                    <td><input type="text" name="n"/></tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="p"/></td>
                </tr>
                <tr>
                    <td>Captcha</td>
                    <td><input type="text" name="c"/></td>
                </tr>
                <tr>
                    <td>  <button onclick="captcha()">Refresh</button></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit"/></td>
                </tr>
            </table>
                <a href="pic.jsp">for new registration</a>
            </form>
        <div id="captchaCode"></div></div>
        
        
    </body>
</html>

