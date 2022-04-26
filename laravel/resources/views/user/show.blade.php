@extends('adminlte::page')


@section('content')

    <div>

        <div class="card-body">
            <div class="form-group">
                            <label for="name">Имя</label>
                <div>
                    <p>{{$user->name}}</p>
                </div>
                <div class="form-group">
                    <label for="email">Почта</label>
                    <div>
                        <p>{{$user->email}}</p>
                    </div>
                    <div class="form-group">
                        <label for="phone">Номер телефона</label>
                        <div>
                            <p>{{$user->phone}}</p>
                        </div>
                        <div>
                            <label for="organization">Название организации</label>
                            <div >
                                <p>{{$user->organization}}</p>
                            </div>

                    <div>
                        <div class="card-footer row">
                            <form class=""  method=get
                                  action="{{route('user.edit', $user->id)}}" style="margin:2px;">
                                @csrf
                                <button class="btn btn-primary" type="submit">
                                    Изменить
                                </button>
                                <input type="hidden" name="user_id" value="{{$user->id}}">
                            </form>
                            <a href="{{route('user.index')}}" class="btn btn-primary" style="margin: 2px;">Назад</a>
                        </div>
                    </div>
@endsection
