<%inherit file="base.mako"/>
<%def name="title()">Dashboard</%def>
<%def name="content()">
<div mod-meta='{"tpl": "include/subnav.mako", "replace": true}'></div>

<div class="row">
    <div class="span6">
        <div class="page-header">
            <div style="float:right;"><a class="btn" href="/project/new">New Project</a></div>
            <h3 style="margin-bottom:10px;">Projects</h3>
        </div>
        <div mod-meta='{
                 "tpl": "util/render_nodes.mako",
                 "uri": "/api/v1/dashboard/get_nodes/",
                 "replace": true
            }'></div>
    </div>
    <div class="row">
        <div class="span6">
            <div class="page-header">
            <h3 style="margin-bottom:10px;">Watched Projects</h3>
            </div>
            % for log in logs:
                <div mod-meta='{
                        "tpl": "util/render_log.mako",
                        "uri": "/api/v1/log/${log}/",
                        "replace": true,
                        "error": "Log unavailable (private component)"
                    }'></div>
            % endfor
        </div>
    </div>
</div>
</%def>