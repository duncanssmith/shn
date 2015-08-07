<?php

public function reOrderBanners($ids)
   {
       if (is_array($ids)) {
           $count = 1;

           foreach ($ids as $id) {
               \DB::table('banners')
                   ->where('id', $id)
                   ->update(array('display_order'=>$count));
               $count++;
           }

           return 'success';
       }
   }
