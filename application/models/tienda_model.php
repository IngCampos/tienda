<?php
class Tienda_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
    }

    public function get_productos($id_categoria)
    {
        if($id_categoria == 0) $query = $this->db->get("productos");
        else 
            $query = $this->db->where("Categorias_id", $id_categoria)->get("productos");
    	if($query->num_rows() > 0) return $query->result();

    	return FALSE;
    }
            
    
     public function get_search($envia)
    {
        if(isset($_GET['search']))
        {
            $name=$envia;
        }
        if($name == ' ') $query = $this->db->get("productos");
        else 
        {
            $this->db->select('productos.id, productos.nombre, productos.descripcion, precio, imagen');
        $this->db->from('productos');
        $this->db->like('productos.nombre', $name);
       $this->db->or_like('productos.descripcion', $name);

        $query = $this->db->get();
            
        }

           
        if($query->num_rows() > 0) return $query->result();

        return FALSE;
    }

    public function get_producto($id)
    {
        $this->db->select('productos.id, productos.nombre, productos.descripcion, precio, imagen, categorias.nombre AS categoria');
        $this->db->from('productos');
        $this->db->join('categorias', 'productos.Categorias_id = categorias.id');
        $this->db->where('productos.id', $id);
       

        $query = $this->db->get();

        if($query->num_rows() == 1) return $query->row();

        return FALSE;
    }


    public function get_categorias()
    {
        $query = $this->db->get("categorias");

        if($query->num_rows() > 0) return $query->result();

        return FALSE;
    }

    public function agrega_pedido($datos)
    {
        $insert = $this->db->insert('pedidos', $datos);

        if($insert) return $this->db->insert_id();

        return FALSE;
    }

    public function agrega_detalle_pedido($carrito, $id_pedido)
    {
        foreach ($carrito as $item) {
            $datos = array(
                "cantidad" => $item["cantidad"],
                "precio" => $item["precio"],
                "Pedidos_id" => $id_pedido,
                "Productos_id" => $item["id_producto"]
            );
            $insert = $this->db->insert('detalle_pedidos', $datos);
            if(!$insert) return FALSE;
        }

        return TRUE;
    }

    public function get_productos_recientes($cantidad)
    {
        $this->db->order_by("id", "DESC");
        $this->db->limit($cantidad, 0);

        $query = $this->db->get("productos");

        if($query->num_rows() > 0) return $query->result();

        return FALSE;
    }

    public function get_productos_aleatorios($cantidad)
    {
        $this->db->order_by("RAND()");
        $this->db->limit($cantidad, 0);

        $query = $this->db->get("productos");

        if($query->num_rows() > 0) return $query->result();

        return FALSE;
    }
}
