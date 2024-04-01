<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Phone extends Model
{
    protected $table = 'phones';
    protected $primaryKey = 'PhoneID';

    
    // Model relationship: a phone has many details
    public function details()
    {
        return $this->hasOne(PhoneDetail::class, 'PhoneID', 'PhoneID');
    }
}
