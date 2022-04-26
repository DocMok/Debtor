@extends('adminlte::page')


@section('content')

    <form action = "{{route('user.update')}}" method="post">
        @csrf
        {{method_field('put')}}
        <div class="card-body">
            <div class="form-group">
                <label for="name">Имя</label>
                <input type="text" name="name" class="form-control" id="name" value="{{$user->name}}">
            </div>

            <div class="form-group">
                <label for="organization">Название организации</label>
                <input type="text" name="organization" class="form-control" id="organization" value="{{$user->organization}}">
            </div>

            <div class="form-group">
                <label for="phone">Номер телефона</label>
                <input type="text" name="phone" class="form-control" id="phone" value="{{$user->phone}}">
            </div>



            <div class="form-group">
                <label for="email">Почта</label>
                <input type="email" name="email" class="form-control" id="email" value="{{$user->email}}">
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" name="password" class="form-control" id="password">
            </div>
        </div>
        <input type='hidden' name="user_id" value="{{$user->id}}">
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Сохранить</button>
        </div>
    </form>
@endsection
