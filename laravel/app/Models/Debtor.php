<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Debtor extends Model
{
    use HasFactory;
    protected $guarded = [];
//    protected $casts = [
//        'start_date' => 'date:Y-m-d',
//    ];

    public function files()
    {
        return $this->hasMany(Files::class);
    }

    public function getStartDateAttribute() {
        return (new Carbon($this->attributes['start_date']))->format('Y-m-d');
    }


}

