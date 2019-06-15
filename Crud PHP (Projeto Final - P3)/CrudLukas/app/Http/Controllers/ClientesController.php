<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use Redirect;

class ClientesController extends Controller
{
    public function index() {
    	$users = User::get();
    	return view ('clientes.lista', ['users' => $users]);
    }

    public function novo() {
    	return view ('clientes.formulario');
    }

    public function salvar(Request $request) {
    	$user = new User();

    	$user = $user->create($request->all());

    	\Session::flash('mensagem_sucesso', 'Cliente cadastrado com sucesso!');

    	return Redirect::to('clientes/novo');
    }

    public function editar($id) {

    	$user = User::findOrFail($id);
    	return view ('clientes.formulario', ['user'=> $user]);
    }

    public function atualizar($id, Request $request) {

    	$user = User::findOrFail($id);
		$user->update($request->all());

		\Session::flash('mensagem_sucesso', 'Cliente atualizado com sucesso!');

    	return Redirect::to('clientes/'.$user->id.'/editar');
	}
	
	public function deletar($id, Request $request) {

    	$user = User::findOrFail($id);
		$user->delete();

		\Session::flash('mensagem_sucesso', 'Cliente removido com sucesso!');

    	return Redirect::to('clientes');
    }
}
