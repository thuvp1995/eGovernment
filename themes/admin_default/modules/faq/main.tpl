<!-- BEGIN: main -->
<link rel="stylesheet" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css">
<div class="well">
    <form action="{NV_BASE_ADMINURL}index.php" method="get">
        <input type="hidden" name ="{NV_NAME_VARIABLE}"value="{MODULE_NAME}" />
        <input type="hidden" name ="{NV_OP_VARIABLE}"value="{OP}" />
        <div class="row">
            <div class="col-xs-12 col-md-4">
                <div class="form-group">
                    <select class="form-control" name="stype">
                        <option value="-">---{LANG.search_type}---</option>
                        <!-- BEGIN: stype -->
                        <option value="{STYPE.key}"{STYPE.selected}>{STYPE.title}</option>
                        <!-- END: stype -->
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-md-4">
                <div class="form-group">
                    <input class="form-control" type="text" value="{Q}" maxlength="{NV_MAX_SEARCH_LENGTH}" name="q" placeholder="{LANG.search_key}">
                </div>
            </div>
            <div class="col-xs-12 col-md-4">
                <div class="form-group">
                    <select class="form-control" name="catid" id="catid">
                        <option value="0">---{LANG.search_cat}---</option>
                        <!-- BEGIN: catid -->
                        <option value="{CATID.key}"{CATID.selected}>{CATID.title}</option>
                        <!-- END: catid -->
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-md-3">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" name="from" id="from" value="{FROM}" readonly="readonly" placeholder="{LANG.date_from}">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="from-btn">
                                <em class="fa fa-calendar fa-fix">&nbsp;</em>
                            </button> </span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-3">
                <div class="form-group">
                    <div class="input-group">
                        <input type="text" class="form-control" name="to" id="to" value="{TO}" readonly="readonly" placeholder="{LANG.date_to}">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="to-btn">
                                <em class="fa fa-calendar fa-fix">&nbsp;</em>
                            </button> </span>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-md-3">
                <div class="form-group">
                    <select class="form-control" name="per_page">
                        <option value="">---{LANG.search_per_page}---</option>
                        <!-- BEGIN: per_page -->
                        <option value="{PER_PAGE.key}"{PER_PAGE.selected}>{PER_PAGE.title}</option>
                        <!-- END: per_page -->
                    </select>
                </div>
            </div>
            <div class="col-xs-12 col-md-3">
                <div class="form-group">
                    <input class="btn btn-primary" type="submit" value="{LANG.search}">
                </div>
            </div>
        </div>
        <input type="hidden" name ="checkss" value="{CHECKSESS}" />
        <em class="help-block">{SEARCH_NOTE}</em>
    </form>
</div>

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<caption>{TABLE_CAPTION}</caption>
	    <thead>
	        <tr>
	            <!-- BEGIN: is_cat1 -->
	            <th class="w100">
	                {LANG.faq_pos}
	            </th>
	            <!-- END: is_cat1 -->
                <th class="w100 text-center"> {LANG.faq_id} </th>
	            <th>
	                {LANG.faq_title_faq}
	            </th>
	            <th>
	                {LANG.faq_catid_faq}
	            </th>
	            <th class="w200 text-center">
	                {LANG.faq_status}
	            </th>
	            <th class="w200 text-center">
	                {LANG.faq_feature}
	            </th>
	        </tr>
	    </thead>
	    <tbody>
	    <!-- BEGIN: row -->
	        <tr>
	            <!-- BEGIN: is_cat2 -->
	            <td>
	                <select class="form-control" name="weight" id="weight{ROW.id}" onchange="nv_change_row_weight({ROW.id});">
	                    <!-- BEGIN: weight -->
	                    <option value="{WEIGHT.pos}"{WEIGHT.selected}>{WEIGHT.pos}</option>
	                    <!-- END: weight -->
	                </select>
	            </td>
	            <!-- END: is_cat2 -->
                <td class="text-center"> {ROW.id_faq} </td>
	            <td>
	                {ROW.title}
	            </td>
	            <td>
	                <a href="{ROW.catlink}">{ROW.cattitle}</a>
	            </td>
	            <td class="text-center">
	                <select id="change_status_{ROW.id}" onchange="nv_chang_status('{ROW.id}');" class="form-control">
					<!-- BEGIN: status -->
					<option value="{STATUS.key}"{STATUS.selected}>{STATUS.val}</option>
					<!-- END: status -->
					</select>
	            </td>
	            <td class="text-center">
	                <em class="fa fa-edit fa-lg">&nbsp;</em> <a href="{EDIT_URL}">{GLANG.edit}</a>
	                &nbsp;&nbsp;
					<em class="fa fa-trash-o fa-lg">&nbsp;</em> <a href="javascript:void(0);" onclick="nv_row_del({ROW.id});">{GLANG.delete}</a>
	            </td>
	        </tr>
	    <!-- END: row -->
	    <tbody>
	    <!-- BEGIN: generate_page -->
	    <tr class="footer">
	        <td colspan="8">
	            {GENERATE_PAGE}
	        </td>
	    </tr>
	    <!-- END: generate_page -->
	</table>
</div>
<a class="btn btn-primary" href="{ADD_NEW_FAQ}">{LANG.faq_addfaq}</a>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/select2/select2.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script>
$("#from, #to").datepicker({
	dateFormat : "dd/mm/yy",
	changeMonth : true,
	changeYear : true,
	showOtherMonths : true,
	showOn : 'focus'
});
$("#catid").select2();
$('#to-btn').click(function(){
	$("#to").datepicker('show');
});
$('#from-btn').click(function(){
	$("#from").datepicker('show');
});
</script>
<!-- END: main -->