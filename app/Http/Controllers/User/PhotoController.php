<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UpdatePhotoRequest;
use App\Jobs\DownloadImage;
use App\Models\Photo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PhotoController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * getData
     *
     * @return void
     */
    public function getData()
    {

        $user             = Auth::user();
        $images           = Photo::where('user_id', $user->id)->paginate(10);
        $transformedItems = $images->getCollection()->map(function ($item) {
            return [
                'id'  => $item->id,
                'url' => asset($item->image),
            ];
        });
        $images->setCollection($transformedItems);

        return response()->json($images);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        return view('frontend.image-uploader.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('frontend.image-uploader.create');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $imageUrl = $request->input('imageUrl');
        dispatch(new DownloadImage($imageUrl));
        return response()->json(['message' => 'Image submitted successfully'], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Photo $photo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Photo $photo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdatePhotoRequest $request, Photo $photo)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Photo $photo)
    {
        //
    }
}
