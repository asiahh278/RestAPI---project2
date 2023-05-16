<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Cartoons extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = ['title_cartoon', 'description', 'author'];

    public function writer()
    {
        return $this->belongsTo(User::class, 'author', 'id');
    }
}
