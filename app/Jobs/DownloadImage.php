<?php

namespace App\Jobs;

use App\Models\Photo;
use GuzzleHttp\Client;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class DownloadImage implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $imageUrl;
    /**
     * Create a new job instance.
     */
    public function __construct($imageUrl)
    {
        $this->imageUrl = $imageUrl;
    }

    /**
     * Execute the job.
     */
    public function handle(): void
    {
        $client     = new Client();
        $response   = $client->get($this->imageUrl);
        $filename   = uniqid() . '.jpg';
        $path       = 'uploads/user_photo_gallery/';
        $savePath   = $path . $filename;
        $uploadPath = public_path($path . $filename);
        file_put_contents($uploadPath, $response->getBody());

        $model = new Photo();
        $model->insert([
            'user_id'    => auth()->user()->id,
            'image'      => $savePath,
            'created_at' => now(),
        ]);

        // event(new ImageProcessed($this->imageUrl));

    }
}
