<?php

namespace App\Http\Controllers;

use App\Models\Cartoons;
use Illuminate\Http\Request;
use Illuminate\support\Facades\Auth;
use App\Http\Resources\CartoonsResource;

use App\Http\Resources\CartoonsDetailResource;

class CartoonsController extends Controller
{
    public function index()
    {
        $cartoons = Cartoons::All();
        return CartoonsDetailResource::collection($cartoons->loadMissing('writer:id,username'));
    }

    public function show($id)
    {
        $cartoons = Cartoons::with('writer:id,username')->findOrFail($id);
        return new CartoonsDetailResource($cartoons->loadMissing('writer:id,username'));
    }

    public function show_by_id($id)
    {
        $cartoons = Cartoons::findOrFail($id);
        return new CartoonsDetailResource($cartoons);
    }

    public function create(Request $request)
    {
        $validated = $request->validate([
            'title_cartoon' => 'required|max:255',
            'description' => 'required',
        ]);

        $request['author'] = Auth::user()->id;

        $cartoons = Cartoons::create($request->all());
        return new CartoonsDetailResource($cartoons->loadMissing('writer:id,username'));
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title_cartoon' => 'required|max:255',
            'description' => 'required',
        ]);

        $cartoons = Cartoons::findOrFail($id);
        $cartoons->update($request->all());

        return new CartoonsDetailResource($cartoons->loadMissing('writer:id,username'));
    }

    public function delete($id)
    {
        $cartoons = Cartoons::findOrFail($id);
        $cartoons->delete();

        return new CartoonsDetailResource($cartoons->loadMissing('writer:id,username'));
    }
}