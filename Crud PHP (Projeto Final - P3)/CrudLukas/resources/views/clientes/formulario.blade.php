@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                Informe abaixo as informações do cliente
                <a class="float-right" href="{{ url('clientes')}}">Listagem cliente</a>
            	</div>

                <div class="card-body">
                	@if(Session::has('mensagem_sucesso'))
                    <div class="alert alert-success" role="alert">{{ Session::get('mensagem_sucesso')}}</div>
                	@endif

                	@if(Request::is('*/editar'))
                		{!! Form::model($user, ['method' => 'PATCH', 'url'=> 'clientes/'.$user->id]) !!}
                	@else
                		{!! Form::open(['url' => 'clientes/salvar']) !!}
                	@endif

                    <strong>{!! Form::label('name', 'Nome')!!}</strong>
                    {!! Form::input('text', 'name', null, ['class' => 'form-control', 'autofocus', 'placeholder' => 'Nome'])!!}

                    <strong>{!! Form::label('email', 'E-mail')!!}</strong>
                    {!! Form::input('text', 'email', null, ['class' => 'form-control', '', 'placeholder' => 'E-mail'])!!}

                    <strong>{!! Form::label('password', 'Senha')!!}</strong>
                    {!! Form::input('password', 'password', null, ['class' => 'form-control', '', 'placeholder' => 'Senha', 'required'])!!}

                    <br/>{!! Form::submit('Salvar', ['class' =>'btn btn-primary'])!!}

                    {!! Form::close()!!}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
