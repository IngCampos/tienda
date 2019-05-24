<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Principal extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("Carrito");
		if(!$this->session->userdata("carrito")) $this->session->set_userdata("carrito", array());
		
	}

	public function index()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["recientes"] = $this->Tienda_model->get_productos_recientes(5);
		$data["aleatorios"] = $this->Tienda_model->get_productos_aleatorios(9);
		$data["content"] = "home";
		$this->load->view("template", $data);
	}

	public function administrar()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["recientes"] = $this->Tienda_model->get_productos_recientes(8);
		$data["aleatorios"] = $this->Tienda_model->get_productos_aleatorios(3);
		$data["content"] = "administrar";
		$this->load->view("template", $data);
	}

	public function estadisticas()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "estadisticas";
		$this->load->view("template", $data);
	}

	public function buzon()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "buzon";
		$this->load->view("template", $data);
	}

	public function eliminar()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["recientes"] = $this->Tienda_model->get_productos_recientes(8);
		$data["aleatorios"] = $this->Tienda_model->get_productos_aleatorios(3);
		$data["content"] = "eliminar";
		$this->load->view("template", $data);
	}

	public function modificar_exito()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["recientes"] = $this->Tienda_model->get_productos_recientes(8);
		$data["aleatorios"] = $this->Tienda_model->get_productos_aleatorios(3);
		$data["content"] = "modificar_exito";
		$this->load->view("template", $data);
	}


	public function modificar()
	{
		$data["menu_current"] = "index";
		$data["total"] = $this->carrito->get_total();
		$data["recientes"] = $this->Tienda_model->get_productos_recientes(8);
		$data["aleatorios"] = $this->Tienda_model->get_productos_aleatorios(3);
		$data["content"] = "modificar";
		$this->load->view("template", $data);
	}

	public function conocenos()
	{
		$data["menu_current"] = "conocenos";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "conocenos";
		$this->load->view("template", $data);
	}

	public function contacto()
	{
		$data["menu_current"] = "contacto";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "contacto";
		$this->load->view("template", $data);
	}

	public function catalogo($id_categoria = 0)
	{
		$id_categoria = (int) $id_categoria;
		if(empty($id_categoria) && $id_categoria < 0) redirect("principal/catalogo");

		$productos = $this->Tienda_model->get_productos($id_categoria);
		if($productos == FALSE) redirect("principal/catalogo");

		$data["productos"] = $productos;
		$data["categorias"] = $this->Tienda_model->get_categorias();
		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "catalogo";
		$this->load->view("template", $data);
	}

	public function search($envia = 'saw')
	{
		if(isset($_GET['search']))
        {
            $name= $_GET['search'];
        }
		if(empty($name) && $name == ' ') redirect("principal/catalogo");

		$productosb = $this->Tienda_model->get_search($name);
		if($productosb == FALSE){redirect("principal/catalogo");}

		$data["productos"] = $productosb;
		$data["categorias"] = $this->Tienda_model->get_categorias();
		$data["menu_current"] = "search";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "search";
		$this->load->view("template", $data);
	}
		

	public function detalle_producto($id)
	{
		$id = (int) $id;
		if(empty($id) || $id < 0) redirect("principal/catalogo");

		$data["producto"] = $this->Tienda_model->get_producto($id);
		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "detalle_producto";
		$this->load->view("template", $data);
	}

	public function add_item()
	{
		$this->carrito->add($this->input->post());
		redirect("principal/carrito");
	}

	/*public function add_item2()
	{
		//$this->carrito->add($this->input->post());
		$carrito = $this->session->userdata("carrito");
		$item = $this->input->post();
		$carrito[$item["id_producto"]] = $item;

		$this->session->set_userdata("carrito", $carrito);
		print_r($this->session->userdata("carrito"));
		//redirect("principal/carrito");
	}

	public function update2($id_producto, $cantidad)
	{
		//$this->carrito->update($id_producto, $cantidad);
		
		$carrito = $this->session->userdata("carrito");
		$carrito[$id_producto]["cantidad"] = $cantidad;
		$this->session->set_userdata("carrito", $carrito);
		redirect("principal/carrito");
	}*/

	public function carrito()
	{
		$data["items"] = $this->carrito->get_carrito();
		$data["total"] = $this->carrito->get_total();
		$data["menu_current"] = "catalogo";
		$data["content"] = "carrito";
		$this->load->view("template", $data);
	}

	public function delete($id_producto)
	{
		$this->carrito->delete($id_producto);
		redirect("principal/carrito");
	}

	public function update($id_producto, $cantidad)
	{
		$this->carrito->update($id_producto, $cantidad);
		redirect("principal/carrito");
	}

	public function detalle_pedido()
	{
		if(!$this->session->userdata("valid_user")) redirect("login");
		if(!$this->session->userdata("carrito")) redirect("principal/catalogo");

		$data["menu_current"] = "catalogo";
		$data["total"] = $this->carrito->get_total();
		$data["content"] = "detalle_pedido";
		$this->load->view("template", $data);
	}

	public function enviar_pedido()
	{
		if(!$this->session->userdata("valid_user")) redirect("login");
		if(!$this->session->userdata("carrito")) redirect("principal/catalogo");

		$total = $this->carrito->get_total();
		$usuario = $this->session->userdata("usuario");
		$carrito = $this->session->userdata("carrito");

		// Agregamos el pedido a la bd y enviamos correos al cliente y al admin
		$tipo_pago = trim(strip_tags($this->input->post("tipo_pago")));
		$comentario = trim(strip_tags($this->input->post("comentario")));

		// Agregamos el pedido a la bd
		$datos = array(
			"fecha" => date("Y-m-d"),
			"tipo_pago" => $tipo_pago,
			"total" => $total,
			"comentario" => $comentario,
			"Clientes_id" => $usuario->id
		);
		// $id_pedido = $this->Tienda_model->agrega_pedido($datos);

		// Agregamos el detalle del pedido a la bd
		// $detalle = $this->Tienda_model->agrega_detalle_pedido($carrito, $id_pedido);

		// Enviamos correo al Admin de la tienda
		$this->load->library('email');

		$config = array(
			'mailtype' => 'html',
			'charset' => 'utf-8'
		);

		$this->email->initialize($config);

		$this->email->from($usuario->correo, $usuario->nombre . " " . $usuario->apellidos);
		$this->email->to('cdshopags@gmail.com'); 

		$this->email->subject('Pedido de prueba ' . $id_pedido);
		//$this->email->message("<p>Este es un <strong>pedido de prueba...</strong><p>");

		$data["mensaje"] = "Este es un <strong>pedido de prueba...</strong> recibido desde el demo de Tienda online.";
		$msg = $this->load->view('email', $data, TRUE);
		$this->email->message($msg);

		$this->email->send();

		// Enviamos correo al Cliente
		$this->email->from('cdshopags@gmail.com', "Demo tienda online");
		$this->email->to($usuario->correo);

		$this->email->subject('Pedido de prueba ' . $id_pedido);
		$data["mensaje"] = "Hemos recibido tu pedido, en breve nos pondremos en contacto contigo.";
		$msg = $this->load->view('email', $data, TRUE);
		$this->email->message($msg);

		// Creamos un mensaje para indicarle al cliente si todo salio bien o no
		if($this->email->send()) $msg = "Hemos recibido tu pedido, en breve nos pondremos en contacto contigo,
			gracias por tu preferencia.";
		// else $msg = "Hubo un error al intentar enviar tu pedido, por favor intentalo más tarde";
		else $msg = $this->session->userdata("usuario")->usuario." gracias por tu compra, se te ha enviado un correo con la confirmacion a".$this->session->userdata("usuario")->correo;

		ini_set( 'display_errors', 1 );
		error_reporting( E_ALL );
		$from = "admin@cdshop.com";
		$to = $this->session->userdata("usuario")->correo;
		$subject = "Confirmacion de compra";
		$message = "Estimado(a) ".$this->session->userdata("usuario")->usuario."Gracias por comprar en CDshop";
		$headers = "From:" . $from;
		mail($to,$subject,$message, $headers);


		// Creamos un flashdata que mostrará dicho mensaje
		$this->session->set_flashdata('msg', $msg);

		// Vaciamos el carrito
		$this->session->unset_userdata('carrito');

		// Redireccionamos hacia el catálogo
		redirect("http://www.cdshop.com.mx/principal/catalogo", 'refresh');
	}

}