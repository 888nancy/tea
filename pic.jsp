<html>
<head>
<style>
table{
	border-color:green;
	background-color:pink;
	font-size:20;
	font-color:red;
        font-family: Times New Roman;
        text-align: center;
        
}
</style>
</head>
<body>
    <form action="picformserv" method="post" enctype="multipart/form-data">
        <table>
            <tr><td>Name</td><td><input type="text" id="n" name="n"/></td><span id="a" text="red"></span></td></tr>

<tr>
<td>Father Name</td><td><input type="text" id="fn" name="fn"/></td><span id="b"></span></td>
</tr>
<tr>
<td>Email</td><td><input type="email" name="e"/></td>
</tr>
<tr>
<td>Password</td><td><input type="password" name="p"/></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio" value="male" name="gen"/>Male</td>
<td><input type="radio" value="female" name="gen"/>Female</td>
</tr>
<tr>
<td>age</td><td><select name="a">
<script>
for(var i=10;i<=70;i++)
{
	
document.write("(<option>"+i+"</option>)");
}
</script>
</select></td> 
<tr>
<td>Location</td><td><select name="a">
<option name="a" value="Allahabad">Allahabad</option>
<option name="a" value="Ahamdabad">Ahamdabad</option>
<option name="a" value="Raipur">Raipur</option>
<option name="a" value="Aligarh">Aligarh</option>
<option name="a" value="Banda">Banda</option>
<option name="a" value="Chitracut">Chitracut</option>
<option name="a" value="Chandauli">Chandauli</option>
<option name="a" value="Barra">Barra</option>
</select></td>

</tr>
<tr>
    <td>user_id</td><td><input type="text" name="ui"/></td>
</tr>

<tr><td>Image</td><td><input type="file" name="f"></td></tr>
<tr>
<td><input type="submit" value="submit"/></td>
</tr>

        </table>
    </form>

</body>
</html>
