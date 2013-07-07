<?php

        require('./Smarty/libs/Smarty.class.php'); // 1
        $tpl = new Smarty; // 2

        $tpl -> template_dir = './templates/';
        $tpl -> compile_dir = './templates_c/';
 
        $tpl -> assign('data', date('d.m.Y')); // 3 
        $tpl -> assign('wiadomosc', array(
                'tytul' => 'Premier podaje się do dymisji!',
                'data' => date('d.m.Y'),
                'autor' => 'Jan Nowak',
                'tresc' => 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                Cras nec diam. In hac habitasse platea dictumst. Donec id leo. Ut
                feugiat augue at metus. In hac habitasse platea dictumst. Donec
                pulvinar sollicitudin tellus. Quisque mattis faucibus nulla. Praesent
                in mauris. Maecenas erat nisi, laoreet in, porta nec, varius ut, turpis.
                Suspendisse pretium nibh at tellus placerat venenatis. Vestibulum
                ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia
                Curae; Etiam felis arcu, ringilla a, commodo quis, blandit id, est.
                Fusce nec sapien nec libero dignissim volutpat.'                
                ));
        $tpl -> assign ("lista", array('aaa','bbb','ccc','ddd','eee',
            'fff','ggg','hhh', 'iii', 'jjj', 'kkk', 'lll', 'mmm', 'nnn'));
        $tpl -> display('szablon1.tpl');


?>