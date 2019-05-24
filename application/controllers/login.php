<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("Carrito");
	}

	public function index()
	{
		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "login";
		$this->load->view("template", $data);
	}

	public function valida_usuario()
	{
		$this->form_validation->set_rules('usuario', 'Usuario', 'trim|required');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');

		$this->form_validation->set_message('required', 'El campo %s es obligatorio');

		if($this->form_validation->run() == FALSE){
			$data["menu_current"] = "catalogo";
			$data["total"] = $this->carrito->get_total();
			$data["content"] = "login";
			$this->load->view("template", $data);
		}else{
			$usuario = $this->Clientes_model->valida_usuario($this->input->post());
			if($usuario == FALSE){
				$data["menu_current"] = "catalogo";
				$data["total"] = $this->carrito->get_total();
				$data["content"] = "login";
				$this->load->view("template", $data);
			}else{
				$this->session->set_userdata("valid_user", TRUE);
				$this->session->set_userdata("usuario", $usuario);

				$data["menu_current"] = "catalogo";
				$data["content"] = "detalle_pedido";

				if(!$this->session->userdata("carrito")) redirect("principal");
				else redirect("principal/detalle_pedido");
			}
		}
	}

	public function crear_cuenta()
	{
		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "crear_cuenta";
		$this->load->view("template", $data);
	}

	public function guardar_cuenta()
	{
		$this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');
		$this->form_validation->set_rules('apellidos', 'Apellidos', 'trim|required');
		$this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|min_length[6]|max_length[12]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');
		$this->form_validation->set_rules('password2', 'Repite Password', 'trim|required|matches[password]');
		$this->form_validation->set_rules('correo', 'Correo', 'required|valid_email');
		$this->form_validation->set_rules('direccion', 'Dirección', 'trim|required');

		$this->form_validation->set_message('required', 'El campo %s es obligatorio');
		$this->form_validation->set_message('valid_email', 'El campo %s debe ser un correo valido');
		$this->form_validation->set_message('matches', 'Los passwords no coinciden');
		$this->form_validation->set_message('min_length', 'El %s debe tener al menos 6 caracteres');
		$this->form_validation->set_message('max_length', 'El %s debe tener un máximo de 12 caracteres');

		if ($this->form_validation->run() == FALSE)
		{
			$data["menu_current"] = "catalogo";
			$data["total"] = $this->carrito->get_total();
			$data["content"] = "crear_cuenta";
			$this->load->view("template", $data);
		}
		else
		{
			$usuario = $this->Clientes_model->agregar_cliente($this->input->post());
			if($usuario == FALSE){
				$data["menu_current"] = "catalogo";
				$data["total"] = $this->carrito->get_total();
				$data["content"] = "crear_cuenta";
				$this->load->view("template", $data);
			}else{
				$this->session->set_userdata("valid_user", TRUE);
				$this->session->set_userdata("usuario", $usuario);

				$data["menu_current"] = "catalogo";
				$data["content"] = "detalle_pedido";

				$connection = mysqli_connect('localhost', 'root', '', 'cdshopco_ldstore2');
				$id_buscar = "SELECT MAX(id) FROM clientes"; 
				//se selecciona el ultimo registro que es el que se inserto
				//esta id es necesaria para asignar el dispositivo a este usuario
				$val = mysqli_query($connection, $id_buscar);
				$fila = mysqli_fetch_row($val);
				
				require $_SERVER['DOCUMENT_ROOT']."/tienda/php_functions/info.php";
				//este archivo contiene las funciones que obtienen los datos para el dispositivo
				$q = "INSERT INTO dispositivos (id, SO,	Navegador,	User_Agent,	Tipo) VALUES ('$fila[0]',	'".getOS()."','".getBrowser()."','".$_SERVER['HTTP_USER_AGENT']."','".getDevice()."')";
				//los campos restantes se agregan automaticamente, id_dispositivo y Ultimo_Acceso
				$query = mysqli_query($connection, $q);

				if(!$this->session->userdata("carrito")) redirect("principal");
				else redirect("principal/detalle_pedido");
			}
		}
	}
	public function actualizar(){
	$this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');
		$this->form_validation->set_rules('apellidos', 'Apellidos', 'trim|required');
		$this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|min_length[6]|max_length[12]');
		$this->form_validation->set_rules('password', 'Password', 'trim|required');

		$this->form_validation->set_rules('correo', 'Correo', 'required|valid_email');
		$this->form_validation->set_rules('direccion', 'Dirección', 'trim|required');

		$this->form_validation->set_message('required', 'El campo %s es obligatorio');
		$this->form_validation->set_message('valid_email', 'El campo %s debe ser un correo valido');

		$this->form_validation->set_message('min_length', 'El %s debe tener al menos 6 caracteres');
		$this->form_validation->set_message('max_length', 'El %s debe tener un máximo de 12 caracteres');

		
		if($this->form_validation->run() == FALSE){
			$data["menu_current"] = "catalogo";
			$data["total"] = $this->carrito->get_total();
			$data["content"] = "editar_cuenta";
			$this->load->view("template", $data);
		}else{
			$usuario = $this->Clientes_model->editar_cliente($this->input->post());
			if($usuario == FALSE){
				$data["menu_current"] = "catalogo";
				$data["total"] = $this->carrito->get_total();
				$data["content"] = "detalle_pedido";
				$this->load->view("template", $data);
			}else{
				$this->session->set_userdata("valid_user", TRUE);
				$this->session->set_userdata("usuario", $usuario);

				$data["menu_current"] = "catalogo";
				$data["content"] = "detalle_pedido";

				if(!$this->session->userdata("carrito")) redirect("principal");
				else redirect("principal/detalle_pedido");
			}
		}
	}
		public function editar_cuenta()
	{
		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "editar_cuenta";
		$this->load->view("template", $data);
		
	}

	public function logout()
	{
		$this->session->unset_userdata('usuario');
		$this->session->unset_userdata('valid_user');

		redirect("principal");
	}
}