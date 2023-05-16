<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CartoonsDetailResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' =>$this->id,
            'title_cartoon' => $this->title_cartoon,
            'description' => $this->description,
            'created_at' => date_format($this->created_at, "Y/m/d H:i:s"),
            'author'  => $this->author,    
            'writer' => $this->writer        
        ];
    }
}
