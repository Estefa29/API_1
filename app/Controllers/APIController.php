<?php namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;

class APIController extends ResourceController
{
    protected $modelName = 'App\Models\ModeloAnimal';
    protected $format    = 'json';

    public function index()
    {
        return $this->respond($this->model->findAll());
    }
    //pudimos hacer el buscar pero solo busca ids que esten en la base de datos , si no esta en la base de datos nos aparece "1"
    public function buscar($id)
    {
        return $this->respond($this->model->find($id));
    }
    public function insertar()
    {
        $nombre=$this->request->getPost("nombre");
        $edad=$this->request->getPost("edad");
        $alimento=$this->request->getPost("alimento");
         $tipo=$this->request->getPost("tipo");
         $descripcion=$this->request->getPost("descripcion");
         $foto=$this->request->getPost("foto");

         $datosEnvio=array(

           
            "nombre"=>$nombre,
            "edad"=>$edad,
            "alimento"=>$alimento,
            "tipo"=>$tipo,
            "descripcion"=>$descripcion,
            "foto"=>$foto
         );
         if($this->validate('animalPOST')){
             $id=$this->model->insert($datosEnvio);
             return $this->respond($this->model->find($id));


         }else{
             $validation = \config\Services::validation();
            return $this->respond($validation-> getErrors());
         }

    }
    public function eliminar($id){

        $consulta=$this->model->where('id',$id)->delete();
        $filasAfectadas=$consulta->connID->affected_rows;

        if($filasAfectadas==1){
            $mensaje=array("mensaje"=>"Registro eliminado con èxito");
            return $this->respond(json_encode($mensaje));
            

        }else{
            $mensaje=array("mensaje"=>"El id a eliminar no se encuentra");
            return $this->respond(json_encode($mensaje),400);
        }
        


    }
    public function editar($id){
        
        $datosAEditar=$this->request->getRawInput();

        $nombre=$datosAEditar["nombre"];
        $edad=$datosAEditar["edad"];

        $datosEnvio=array(

           
            "nombre"=>$nombre,
            "edad"=>$edad,
            
         );
         if($this->validate('animalPUT')){

           $this->model->update($id, $datosEnvio);
           return $this->respond($this->model->find($id));

         }else{
            $validation = \config\Services::validation();
            return $this->respond($validation-> getErrors());
         
        }
    }
    
}
