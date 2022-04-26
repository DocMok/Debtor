@extends('adminlte::page')


@section('content')

    <form action = "{{route('user.store')}}" method="post">
        @csrf
        <div class="card-body">
            <div class="form-group">
                <label for="name">Имя</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Введите имя">
            </div>

            <div class="form-group">
                <label for="organization">Организация</label>
                <input type="text" name="organization" class="form-control" id="organization" placeholder="Название организации">
            </div>

            <div class="form-group">
                <label for="phone">Номер телефона</label>
                <input type="text" name="phone" class="form-control" id="phone" placeholder="Номер телефона">
            </div>

            <div class="form-group">
                <label for="email">Почта</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Введите почту">
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
            </div>
        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Сохранить</button>
        </div>
    </form>
@endsection
