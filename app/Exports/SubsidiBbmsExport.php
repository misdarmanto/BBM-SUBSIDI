<?php

namespace App\Exports;

use App\Models\SubsidiBbm;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;

class SubsidiBbmsExport implements FromCollection, WithHeadings
{
    public function collection()
    {
        return SubsidiBbm::select('tanggal', 'saldo')->get();
    }

    public function headings(): array
    {
        return [
            'Tanggal',
            'Saldo'
        ];
    }
}
