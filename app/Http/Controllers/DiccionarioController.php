<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Diccionario;

use Illuminate\Support\Facades\Redirect;
use DB;

class DiccionarioController extends Controller
{
    public function index(Request $request)
    {
    	 $dic = DB::table('diccionario')->select('palabra as palabra')->orderBy('palabra','asc')->paginate(4);
      return [
              'pagination'=>[ 'total'=>$dic->total(),
                            'current_page'=>$dic->currentPage(),
                            'per_page'=>$dic->perPage(),
                            'last_page'=>$dic->lastPage(),
                            'from'=>$dic->firstItem(),
                            'to'=>$dic->lastPage()
               ],
              'dic'=>$dic
            ];
    }


    public function store(Request $request)
    {   

      try {

        DB::beginTransaction();
        $diccionario = new Diccionario;
        $diccionario->palabra= $request->get('palabra');
        $diccionario->save();
        DB::commit();
          
      } catch (Exception $e) {
          DB::rollback();
      }

      return;  

    }
}
