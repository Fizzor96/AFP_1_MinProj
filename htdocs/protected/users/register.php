
<br>
<br>
<br>
<form method="POST">
	<div class="form-row">
	
		<div class="form-group col-md-12 p-3 mb-2 text-black">
			<label for="registeruserName" style="font-weight:bold">Felhasználó név</label>
			<input type="text" class="form-control" name="felhasznalonev" value="<?=isset($postData) ? $postData['felhasznalonev'] : "";?>">
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-6 p-3 mb-2 text-black">
			<label for="registerEmail" style="font-weight:bold">Email</label>
			<input type="email" class="form-control" name="email" value="<?=isset($postData) ? $postData['email'] : "";?>">
		</div>
		<div class="form-group col-md-6 p-3 mb-2 text-black">
			<label for="registerEmail1" style="font-weight:bold">Email megerősítése</label>
			<input type="email" class="form-control" name="emailujra" value="<?=isset($postData) ? $postData['emailujra'] : "";?>">
		</div>
	</div>

	<div class="form-row">
		<div class="form-group col-md-6 p-3 mb-2 text-black">
			<label for="registerPassword" style="font-weight:bold">Jelszó</label>
			<input type="password" class="form-control" name="jelszo" value="">
		</div>
		<div class="form-group col-md-6 p-3 mb-2 text-black">
			<label for="registerPassword1" style="font-weight:bold">Jelszó megerősítése</label>
			<input type="password" class="form-control" name="jelszoujra" value="">
		</div>
	</div>
	<button type="submit" class="btn btn-primary" name="register" style="background-color: #2a7886; width:100%">Regisztráció</button>
</form>