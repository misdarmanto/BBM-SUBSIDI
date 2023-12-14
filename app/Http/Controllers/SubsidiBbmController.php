<?php

namespace App\Http\Controllers;

use App\Exports\SubsidiBbmsExport;
use App\Imports\SubsidiBbmsImport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;
use App\Models\SubsidiBbm;

class SubsidiBbmController extends Controller
{
    public function index()
    {
        $subsidiBbm = SubsidiBbm::all();

        return view('dashboard.index', compact('subsidiBbm'));
    }

    public function export()
    {
        return Excel::download(new SubsidiBbmsExport, 'subsidi-bbm.xlsx');
    }

    public function import(Request $request)
    {
        $file = $request->file('file');

        if ($file === null) {
            return redirect()->route('dashboard');
        }

        Excel::import(new SubsidiBbmsImport, $file);

        return redirect()->route('dashboard')->with('success', 'Data imported successfully.');
    }
}
