<?php

namespace App\Http\Controllers;

use App\Models\Debtor;
use App\Models\File;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Storage;

class FileController extends Controller
{
    public function store(Request $request)
    {
        if ($request->file('documents')) {
            foreach ($request->file('documents') as $document) {
                $documentPath = $document->store($request->debtor_id, ['disk' => 'public']);
                if ($documentPath) {
                    File::create([
                        'path' => $documentPath,
                        'debtor_id' => $request->debtor_id,
                    ]);
                }
            }
        }

        return redirect()->back();
    }

    public function destroy(Request $request)
    {
        $file = File::findOrFail($request->id);
        $file->delete();
        return $file;

    }

    public function dbDump()
    {
        Artisan::call('snapshot:create dump');
        return Storage::disk('snapshots')->download("dump.sql");
    }
}
