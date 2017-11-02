<!-- BEGIN: main -->
<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
        <colgroup>
            <col width="50" />
            <col width="100" />
            <!-- BEGIN: send_comm_col -->
            <col />
            <col width="125" />
            <!-- END: send_comm_col -->
            <!-- BEGIN: publtime_col -->
            <col width="125" />
            <col />
            <!-- END: publtime_col -->
            <!-- BEGIN: down_in_home_col --><col width="130" /><!-- END: down_in_home_col -->
            <!-- BEGIN: admin_link_col --><col width="80" /><!-- END: admin_link_col -->
        </colgroup>
        <thead>
            <tr>
                <th class="text-center">{LANG.stt}</th>
                <th class="text-center">{LANG.code}</th>
                <!-- BEGIN: publtime_title -->
                <th class="text-center">{LANG.publtime}</th>
                <!-- END: publtime_title -->
                <th class="text-center">{LANG.trichyeu}</th>
                <!-- BEGIN: down_in_home -->
                <th class="text-center">{LANG.files}</th>
                <!-- END: down_in_home -->
                <!-- BEGIN: send_comm_title -->
                <th>{LANG.comm_time}</th>
                <!-- END: send_comm_title -->
                <!-- BEGIN: admin_link_title --><th></th><!-- END: admin_link_title -->
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: loop -->
            <tr>
                <td class="text-center">{ROW.stt}</td>
                <td><a href="{ROW.url}" title="{ROW.title}">{ROW.code}</a></td>
                <!-- BEGIN: publtime -->
                <td class="text-center">{ROW.publtime}</td>
                <!-- END: publtime -->
                <td>
                	<a href="{ROW.url}" title="{ROW.introtext}">{ROW.introtext}</a>
                	<!-- BEGIN: comm -->
                	<a href="{ROW.url}">({ROW.number_comm})</a>
                	<div class="comm_time">
                		<p class="start_comm">{ROW.start_comm_time}</p>
                		<p class="end_comm">{ROW.end_comm_time}</p>
                	</div>
                	 <!-- END: comm -->
                </td>
                <!-- BEGIN: down_in_home -->
                <td>
                    <!-- BEGIN: files -->
                    <ul style="padding: 0">
                        <!-- BEGIN: loopfile -->
                        <li style="display: inline-block"><em class="fa fa-download">&nbsp;</em><a href="{FILE.url}" title="{FILE.title}">{FILE.titledown}</a></li>
                        <!-- END: loopfile -->
                        </ul>
                    <!-- END: files -->
                </td>
                <!-- END: down_in_home -->
                <!-- BEGIN: send_comm -->
                	<td>
            			<a href="{ROW.url}#comment" title="{ROW.send_comm_title}"><div class="send_comm"></div></a>
                	</td>
                <!-- END: send_comm -->
                <!-- BEGIN: comm_close -->
                	<td>
            			<a href="{ROW.url}#comment" title="{ROW.send_comm_title}"><div class="comm_close"></div></a>
                	</td>
                <!-- END: comm_close -->
                <!-- BEGIN: admin_link -->
                <td>
                	<a class="btn btn-primary btn-xs btn_edit margin-bottom" href="{ROW.edit_link}"><em class="fa fa-edit margin-right"></em>{LANG.edit}</a>
					<a class="btn btn-danger btn-xs" href="javascript:void(0);" onclick="{ROW.delete_link}"><em class="fa fa-trash-o margin-right"></em>{LANG.delete}</a>
                </td>
                <!-- END: admin_link -->
            </tr>
            <!-- END: loop -->
        </tbody>
    </table>
</div>
<div class="generate_page">
    {generate_page}
</div>
<!-- END: main -->