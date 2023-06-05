<?php

namespace App\Events;

use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class ImageProcessed implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    public $imageUrl;
    /**
     * Create a new event instance.
     */
    public function __construct($imageUrl)
    {
        $this->imageUrl = $imageUrl;
    }
    public function broadcastOn()
    {
        return ['my-channel'];
    }

    public function broadcastAs()
    {
        return 'my-event';
    }
}
