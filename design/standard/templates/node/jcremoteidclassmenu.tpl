
<hr/>
<script type="text/javascript">
<!--
menuArray['ClassMenu']['elements']['classmenu-jcremoteid'] = new Array();
menuArray['ClassMenu']['elements']['classmenu-jcremoteid']['url'] = {"/remoteid/update/%nodeID%"|ezurl};
// -->
</script>

{def $jcrid_access = fetch('user', 'has_access_to', hash('module', 'remoteid', 'function', 'get'))}

<a id="classmenu-jcremoteid" href="#" {if $jcrid_access|not()}class="menu-item-disabled"{/if} onmouseover="ezpopmenu_mouseOver( 'ContextMenu' )" >{"Update Remote IDs"|i18n("remoteid/update")}</a>

{undef $jcrid_access}