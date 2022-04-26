<?php

namespace App\Http\Controllers;

use App\Http\Requests\UserStoreRequest;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserControler extends Controller
{
    public function create()
    {
        return view('user.create');
    }

    public function store(UserStoreRequest $request)


    {
       // dd($request);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'organization' => $request->organization,
            'password' => bcrypt($request->password),
            'is_admin' => 0
        ]);
        return redirect(route('index'));
    }

    public function index()
    {
        $users = User::paginate(20);
        return view('user.index', compact('users'));
    }

    public function edit(Request $request)
    {
        $user = User::findOrFail($request->user_id);
        return view('user.edit', compact('user'));
    }

    public function update(Request $request)
    {
        $user = User::findOrFail($request->user_id);
        $user->update([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'organization' => $request->organization,
            'password' => bcrypt($request->password),
        ]);
        if($request->password){
            $user->update([ 'password' => bcrypt($request->password)]);
        }
        return redirect(route('user.index'));
    }
    public function destroy(User $user)
    {
        $user->delete();
        return redirect()->back();
    }

    public function search(Request $request)
    {

        $users = User::where('name', 'like', "%$request->search%")->
        orWhere('email', 'like', "%$request->search%")->
        get();

        return view('user.index', compact('users'));
    }

    public function show()
    {
        $user = Auth::user();
        return view('user.show', compact('user'));

    }
}
