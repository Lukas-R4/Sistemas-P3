@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                Clientes
                <a class="float-right" href="{{ url('clientes/novo')}}">Novo cliente</a>
            	</div>

                <div class="card-body">
					@if(Session::has('mensagem_sucesso'))
					<div class="alert alert-success" role="alert">{{ Session::get('mensagem_sucesso')}}</div>
                	@endif
					
                    <table class="table">
                    	<th>Nome</th>
                    	<th>E-mail</th>
                    	<th>Ações</th>
                    	<tbody>
                    		@foreach($users as $user)
                    		<tr>
                    			<td>{{ $user->name}}</td>	
                    			<td>{{ $user->email}}</td>
                    			<td>
                    				<a href="/clientes/{{ $user->id}}/editar" class="btn btn-primary btn-sm">Editar</a>
                    				{!! Form::open(['method' => 'DELETE', 'url' => '/clientes/'.$user->id, 'style' => 'display: inline;']) !!}
									<button type="submit" class="btn btn-primary btn-sm">Excluir</button>
									{!! Form::close() !!}
                    			</td>
                    		</tr>
                    		@endforeach
                    	</tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
