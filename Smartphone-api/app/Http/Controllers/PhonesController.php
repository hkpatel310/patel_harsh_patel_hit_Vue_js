<?php

namespace App\Http\Controllers;

use App\Models\Phone;
use Illuminate\Http\Request;

class PhonesController extends Controller
{
    public function index()
    {
        $phones = Phone::with('details')->get();
        return response()->json($phones);
    }

    public function show($id)
    {
        $phone = Phone::with('details')->find($id);
        if (!$phone) {
            return response()->json(['message' => 'Phone not found'], 404);
        }
        return response()->json($phone);
    }
}
