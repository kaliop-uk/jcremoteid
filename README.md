jcRemoteID extension for eZPublish
==================================

jcRemoteID is an extension allowing users to set Object RemoteID and Node RemoteID directly from the Administration
Interface:
- with a custom module/view (remoteid/update/<NodeID>) available from the context menu (main one, on full view)
- or using a custom a datatype

This extension has been created to avoid the usage of nodeID or objectID within configuration (any ini) and also
override.ini (not documented but override are working on remote id condition).

The main interest of this is to be able to use the same remote id in multiple environments (dev, test, production) for
nodes or objects (whereas object id or node id are auto increment).


## Using Remote ID in fetches

    {def $object = fetch('content','object',hash('remote_id','MYOBJECT'))}
    {def $node = fetch('content','node',hash('remote_id','MYNODE'))}


## Using Remote ID in override

    [full_myobject]
    Source=node/view/full
    Subdir=templates
    MatchFile=node/view/full/myobject.tpl
    Match[remode_id]=MYOBJECT


    [full_mynode]
    Source=node/view/full
    Subdir=templates
    MatchFile=node/view/full/mynode.tpl
    Match[node_remode_id]=MYNODE


    [full_mynode_children]
    Source=node/view/full
    Subdir=templates
    MatchFile=node/view/full/mynode_child.tpl
    Match[parent_node_remode_id]=MYNODE

    [full_myobject_children]
    Source=node/view/full
    Subdir=templates
    MatchFile=node/view/full/myobject_child.tpl
    Match[parent_object_remode_id]=MYOBJECT
