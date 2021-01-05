{extends file="main.tpl"}

{block name=content}

<div class="pure-menu pure-menu-horizontal bottom-margin">
	<a href="{$conf->action_url}logout"  class="pure-menu-heading pure-menu-link">wyloguj</a>
	<span style="float:right;">użytkownik: {$user->login}, rola: {$user->role}</span>
</div>

<form action="{$conf->action_url}calcCompute" method="post" class="pure-form pure-form-aligned bottom-margin">
	<fieldset>
            <label for="x">Kwota kredytowania</label>
		<input id="kwota" type="number" placeholder="" name="kwota" value="{$form->kwota}"></br>
                <label for="x">Liczba lat</label>
		<input id="lata" type="number" placeholder="" name="lata" value="{$form->lata}"></br>
                <label for="x">Oprocentowanie</label>
		<input id="procent" type="number" placeholder="" name="procent" value="{$form->procent}">
		<div class="pure-controls">
			<input type="submit" value="Oblicz" class="pure-button pure-button-primary"/>
		</div>
	</fieldset>
</form>	

{include file='messages.tpl'}

{if isset($res->result)}
<div class="messages info">
	Wynik: {$res->result}
</div>
{/if}

{/block}