<?php

use Illuminate\Http\Request;
use Illuminate\Routing\RouteGroup; 
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CartoonsController;
use App\Http\Controllers\AuthenticationController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware(['auth:sanctum'])->group(function(){  
    Route::get('/logout', [AuthenticationController::class, 'logout']);
    Route::get('/check_account', [AuthenticationController::class, 'cek_account']); 

    Route::post('/add_cartoon', [CartoonsController::class, 'create']);
    Route::patch('/update_cartoon/{id}', [CartoonsController::class, 'update'])->middleware('post-owner');
    Route::delete('/delete_cartoon/{id}', [CartoonsController::class, 'delete'])->middleware('post-owner');
});



Route::post('/login', [AuthenticationController::class, 'login']);

Route::get('/cartoons', [CartoonsController::class, 'index']); 
Route::get('/cartoons/{id}', [CartoonsController::class, 'show']);
Route::get('/cartoons_by_id/{id}', [CartoonsController::class, 'show_by_id']);




