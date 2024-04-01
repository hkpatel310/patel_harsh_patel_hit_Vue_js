<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PhoneDetail extends Model
{
    protected $table = 'phonedetails';

    // Model relationship: detail belongs to a phone
    public function phone()
    {
        return $this->belongsTo(Phone::class, 'PhoneID', 'PhoneID');
    }
    
    
}
