{************************************
****** Submit Step 2 Template *******
*************************************}
<!-- submit_step_2.tpl -->
<script type="text/javascript" src="{$my_pligg_base}/templates/{$the_template}/js/story_preview.js"></script>
{literal}
	<style type="text/css">
		.form-horizontal .control-label {
			width:120px;
		}
		.form-horizontal .controls {
			margin-left:140px;
		}
	</style>
{/literal}
<div class="submit_page">
	<legend>{#PLIGG_Visual_Submit2_Details#}</legend>
	<form class="form-horizontal" action="{$URL_submit}" method="post" name="thisform" id="thisform" enctype="multipart/form-data" onsubmit="return checkForm()">
		<div class="span6" style="margin-left:0;">
			{checkActionsTpl location="tpl_pligg_submit_step2_start"}
			<div class="control-group">
				<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Title#}</label>
				<div class="controls">
					<input type="text" id="title" class="span4" tabindex="1" name="title" value="{if $submit_title}{$submit_title}{else}{$submit_url_title}{/if}" size="54" maxlength="{$maxTitleLength}" />
					<p class="help-inline">{#PLIGG_Visual_Submit2_TitleInstruct#}</p>
				</div>
			</div>
			<div class="control-group">
				<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Category#}</label>
				<div class="controls">
					<select id="category" tabindex="2" {if $Multiple_Categories}name="category[]" multiple size=10{else}name="category"{/if} onchange="if ($('#category option:selected').val()>0) $('#lp-category').text($('#category option:selected').text()); else $('#lp-category').text('');">
						<option value="">{#PLIGG_Visual_Submit2_CatInstructSelect#}</option>
						{section name=thecat loop=$submit_cat_array}
						   <option value = "{$submit_cat_array[thecat].auto_id}" {if $submit_cat_array[thecat].auto_id == $submit_category  || in_array($cat_array[thecat].auto_id,$submit_additional_cats)}selected{/if}>
								  {if $submit_cat_array[thecat].spacercount lt $submit_lastspacer}{$submit_cat_array[thecat].spacerdiff|repeat_count:''}{/if}
								  {if $submit_cat_array[thecat].spacercount gt $submit_lastspacer}{/if}
								  {$submit_cat_array[thecat].spacercount|repeat_count:'&nbsp;&nbsp;&nbsp;'}
								  {$submit_cat_array[thecat].name}
								  &nbsp;&nbsp;&nbsp;
								  {assign var=submit_lastspacer value=$submit_cat_array[thecat].spacercount}
						  </option>
						{/section}
					</select>
					<p class="help-inline">{#PLIGG_Visual_Submit2_CatInstruct#}</p>
				</div>
			</div>
			{if $enable_group && $output neq ''}
				<div class="control-group">
					<label for="input01" class="control-label">{#PLIGG_Visual_Group_Submit_story#}</label>
					<div class="controls">
						{$output}
					</div>
				</div>
			{/if}
			{checkActionsTpl location="tpl_header_admin_main_comment_subscription"}
			{*{checkActionsTpl location="tpl_timestamp_stories"}*}
			{if $enable_tags}
				<div class="control-group">
					<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Tags#}</label>
					<div class="controls">
						<input tabindex="10" type="text" id="tags" class="span4" style="margin: 0 auto;" name="tags" data-mode="multiple" value="{$tags_words}" maxlength="{$maxTagsLength}" data-source="[&quot;.net&quot;,&quot;ajax&quot;,&quot;arts&quot;,&quot;apple&quot;,&quot;blog&quot;,&quot;books&quot;,&quot;business&quot;,&quot;celebrity&quot;,&quot;clothing&quot;,&quot;cms&quot;,&quot;coldfusion&quot;,&quot;computer&quot;,&quot;console&quot;,&quot;contest&quot;,&quot;css&quot;,&quot;deal&quot;,&quot;decorating&quot;,&quot;design&quot;,&quot;DIY&quot;,&quot;download&quot;,&quot;education&quot;,&quot;election&quot;,&quot;entertainment&quot;,&quot;enviroment&quot;,&quot;firefox&quot;,&quot;flash&quot;,&quot;food&quot;,&quot;forums&quot;,&quot;free software&quot;,&quot;funny&quot;,&quot;gadget&quot;,&quot;gallery&quot;,&quot;games&quot;,&quot;gifts&quot;,&quot;Google&quot;,&quot;hacking&quot;,&quot;handheld&quot;,&quot;hardware&quot;,&quot;health&quot;,&quot;howto&quot;,&quot;html&quot;,&quot;humor&quot;,&quot;images&quot;,&quot;international&quot;,&quot;internet&quot;,&quot;javascript&quot;,&quot;jobs&quot;,&quot;lifestyle&quot;,&quot;linux&quot;,&quot;mac&quot;,&quot;Microsoft&quot;,&quot;mobile&quot;,&quot;mods&quot;,&quot;money&quot;,&quot;movies&quot;,&quot;music&quot;,&quot;mysql&quot;,&quot;Nintendo&quot;,&quot;open source&quot;,&quot;pc&quot;,&quot;php&quot;,&quot;photoshop&quot;,&quot;Playstation&quot;,&quot;podcast&quot;,&quot;politics&quot;,&quot;portfolio&quot;,&quot;programming&quot;,&quot;rumor&quot;,&quot;science&quot;,&quot;security&quot;,&quot;SEO&quot;,&quot;shopping&quot;,&quot;software&quot;,&quot;space&quot;,&quot;sports&quot;,&quot;technology&quot;,&quot;television&quot;,&quot;templates&quot;,&quot;themes&quot;,&quot;tools&quot;,&quot;toys&quot;,&quot;travel&quot;,&quot;tutorial&quot;,&quot;typography&quot;,&quot;usability&quot;,&quot;video&quot;,&quot;video game&quot;,&quot;web&quot;,&quot;webdesign&quot;,&quot;Wii&quot;,&quot;work&quot;,&quot;Xbox&quot;,&quot;XHTML&quot;,&quot;Yahoo&quot;]" data-items="4" data-delimiter="," data-provide="typeahead">
						<p class="help-inline">{#PLIGG_Visual_Submit2_Tags_Inst1#}<br />
						{#PLIGG_Visual_Submit2_Tags_Example#} {#PLIGG_Visual_Submit2_Tags_Inst2#}</p>
					</div>
				</div>
			{/if}
			{checkActionsTpl location="tpl_pligg_submit_step2_middle"}
			<div class="control-group">
				<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Description#}</label>
				<div class="controls">
					<textarea name="bodytext" tabindex="15" rows="8" id="bodytext" class="span4" maxlength="{$maxStoryLength}" WRAP="SOFT" onkeypress="counter(this)" onkeydown="counter(this)" onkeyup="counter(this); if(!this.form.summarycheckbox || !this.form.summarytext) return; if(this.form.summarycheckbox.checked == false) {ldelim}this.form.summarytext.value = this.form.bodytext.value.substring(0, {$StorySummary_ContentTruncate});{rdelim}textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{if $submit_url_description}{$submit_url_description}{/if}{$submit_content}</textarea><br />
					{* <input size="2" value='{$storylen}' name="text_num disabled" class="span1" /> {#PLIGG_Visual_Total_Chars#} *}
					<p class="help-inline">{#PLIGG_Visual_Submit2_DescInstruct#}</p>
				</div>
			</div>
			{if $SubmitSummary_Allow_Edit eq 1}
				<div class="control-group">
					<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Summary#}</label>
					<div class="controls">
						<input type="checkbox" tabindex="16" name="summarycheckbox" id="summarycheckbox" onclick="SetState(this, this.form.summarytext)"> {#PLIGG_Visual_Submit2_SummaryCheckBox#}
						{* if $Story_Content_Tags_To_Allow eq ""}
							<p><strong>{#PLIGG_Visual_Submit2_No_HTMLTagsAllowed#} </strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}</p>
						{else}
							<p><strong>{#PLIGG_Visual_Submit2_HTMLTagsAllowed#}:</strong> {$Story_Content_Tags_To_Allow}</p>
						{/if *}
						<textarea disabled="true" name="summarytext" rows="5" maxlength="{$maxSummaryLength}" id="summarytext" class="span1" WRAP="SOFT" onkeydown="textCounter(this.form.summarytext,this.form.remLen, {$StorySummary_ContentTruncate});">{$submit_summary}</textarea><br />
						<input readonly type="text" name="remLen" size="3" class="span1" value="400">{#PLIGG_Visual_Submit2_SummaryCharactersLeft#}
						<p class="help-inline">{#PLIGG_Visual_Submit2_SummaryInstruct#}{#PLIGG_Visual_Submit2_SummaryLimit#}{$StorySummary_ContentTruncate}{#PLIGG_Visual_Submit2_SummaryLimitCharacters#}</p>
					</div>
				</div>
			{/if}
			{if $Submit_Show_URL_Input eq 1}
				<div class="control-group">
					<label for="input01" class="control-label">{#PLIGG_Visual_Submit2_Trackback#}</label>
					<div class="controls">
						<input type="text" name="trackback" tabindex="17" id="trackback" class="span5" value="{$submit_trackback}" size="54" />
					</div>
				</div>
			{/if}
			{checkActionsTpl location="submit_step_2_pre_extrafields"}
			{include file=$tpl_extra_fields.".tpl"}
			{if isset($register_step_1_extra)}
				{$register_step_1_extra}
			{/if}
			{checkActionsTpl location="tpl_pligg_submit_step2_end"}
			<div class="form-actions">            
				<input type="hidden" name="url" id="url" value="{$submit_url}" />
				<input type="hidden" name="phase" value="2" />
				<input type="hidden" name="randkey" value="{$randkey}" />
				<input type="hidden" name="id" value="{$submit_id}" />
				<button class="btn" tabindex="30" ONCLICK="history.go(-1)">Cancel</button>
				<input class="btn btn-primary" tabindex="31" type="submit" value="{#PLIGG_Visual_Submit2_Continue#}" />
			</div>
		</div>
		<div class="span6" style="margin-left:20px;" id="dockcontent">
			{checkActionsTpl location="tpl_pligg_submit_preview_start"}
			<div class="preview-story">
				<h3 class="preview-title">{#PLIGG_Visual_Story_Preview#}</h3>
				<div class="headline">
					{if $Voting_Method neq 2}
						<div class="vote">
							<span class="submit_votenumber">
								1
							</span><br />
							<span class="subtext">
								{#PLIGG_Visual_Vote_For_It#}
							</span>
						</div>
					{/if}	
					<div class="title">
						<h2 style="min-height:16px;">
							<div id="lp-title">{if $submit_title}{$submit_title}{else}{$submit_url_title}{/if}</div>
						</h2>
						<span class="subtext">
							{php}
							global $main_smarty, $current_user;
							if ($current_user->user_id > 0 && $current_user->authenticated) {
								$login=$current_user->user_login;
							}
							// Read the users information from the database
							$user=new User();
							$user->username = $login;
							// Assign smarty variables to use in the template.
							$main_smarty->assign('user_username', $user->username);
							$main_smarty->assign('user_url_personal_data', getmyurl('user2', $login, 'profile'));
							{/php}
							{#PLIGG_Visual_LS_Posted_By#} <a href="{$user_url_personal_data}">{$user_username}</a> 
							{if $url_short neq "http://" && $url_short neq "://"}
								(<a href="{$url}" target="_blank">{$url_short}</a>)
							{/if}
						</span>
					</div>
				</div>
				<div class="storycontent">
					<span class="news-body-text">
						{checkActionsTpl location="tpl_pligg_submit_preview_middle"}
						<span id="ls_contents-{$link_shakebox_index}">
							<div id="lp-bodytext">{if $submit_url_description}{$submit_url_description}{/if}{$submit_content}</div>
						</span>
					</span>
				</div>	
				<div class="storyfooter" style="float:right;font-size:10px;">	
					<div id="lp-category">
						{section name=thecat loop=$submit_cat_array}
						   {if $submit_cat_array[thecat].auto_id == $submit_category}{$submit_cat_array[thecat].name}{/if}
						{/section}
					</div>| 
					<div id="lp-tags">{$tags_words}</div>
				</div>
			</div>
			{literal}
				<script type="text/javascript">
					$(document).ready(function() {
						$('#submit_step_1_content input, #submit_step_1_content textarea, #submit_step_1_content select').bind('blur keyup',function() {
							// Main content
							$('#lp-bodytext').text($('#bodytext').val());
							$('#lp-bodytext').html($('#lp-bodytext').html().replace(/\n/g,'<br />'));
							// Other
							$('#lp-link_group_id').text($('#link_group_id').val());
							$('#lp-tags').text($('#tags').val());
							$('#lp-title').text($('#title').val());
						});
					});
				</script>
			{/literal}
		</div>
	</form>
</div>
{literal}
<script type="text/javascript">
	var dock0=new dockit("dockcontent", 0);
</script>
{/literal}
<!--/submit_step_2.tpl -->