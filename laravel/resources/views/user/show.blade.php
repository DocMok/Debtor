@extends('adminlte::page')


@section('content')

    <div>

        <div class="card-body">
            <div class="form-group">
                            <label for="name">Имя</label>
                <div type="text" name="name" class="form-control" id="name" value="{{$user->name}}">
                    <p>{{$user->name}}</p>
                </div>
                <div class="form-group">
                    <label for="email">Почта</label>
                    <div type="email" name="email" class="form-control" id="email" >
                        <p>{{$user->email}}</p>
                    </div>
                    <div class="form-group">
                        <label for="phone">Номер телефона</label>
                        <div type="text" name="phone" class="form-control" id="phone" >
                            <p>{{$user->phone}}</p>
                        </div>
                        <div class="form-group">
                            <label for="organization">Название организации</label>
                            <div type="text" name="organization" class="form-control" id="organization" >
                                <p>{{$user->organization}}</p>
                            </div>

                    <div class="form-group">
                        <label for="password">Пароль</label>
                        <div type="password" name="password" class="form-control" id="password">
                            <p></p>
                        </div>
                    </div>

                    <div type='hidden' name="user_id" value="{{$user->id}}">
                        <div class="card-footer row">
                            <form class=""  method=get
                                  action="{{route('user.edit', $user->id)}}" style="margin:2px;">
                                @csrf
                                <button class="btn btn-primary" type="submit">
                                    Change
                                </button>
                                <input type="hidden" name="user_id" value="{{$user->id}}">
                            </form>
                            <a href="{{route('user.index')}}" class="btn btn-primary" style="margin: 2px;">Назад</a>
                        </div>
                    </div>
@endsection
