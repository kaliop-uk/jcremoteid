<?php

$Module = array( 'name' => 'RemoteID' );

$ViewList = array(
    'update' => array(
        'script'=>'update.php',
        'params'=>array( 'NodeID' ),
        'functions' => array( 'set' ),
        'single_post_actions'=> array(
            'UpdateRemoteID' => 'UpdateRemoteID'
        )
    )
);

$FunctionList = array(
    'set' => array()
);
