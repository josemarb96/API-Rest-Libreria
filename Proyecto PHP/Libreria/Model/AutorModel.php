<?php

/**
 * Created by PhpStorm.
 * User: Josemarb96
 * Date: 20/11/2016
 * Time: 13:48
 */
class AutorModel implements JsonSerializable
{
    private $codigo;
    private $nombre;
    private $apellidos;

    public function __construct($cod,$nombre,$apellidos)
    {
        $this->codigo=$cod;
        $this->nombre=$nombre;
        $this->apellidos=$apellidos;
    }

    /**
     * Specify data which should be serialized to JSON
     * @link http://php.net/manual/en/jsonserializable.jsonserialize.php
     * @return mixed data which can be serialized by <b>json_encode</b>,
     * which is a value of any type other than a resource.
     * @since 5.4.0
     */

    //Needed if the properties of the class are private.
    //Otherwise json_encode will encode blank objects
    function jsonSerialize()
    {
        return array(
            'codigo' => $this->codigo,
            'nombre' => $this->nombre,
            'apellidos' => $this->apellidos
        );
    }

    public function __sleep(){
        return array('codigo' , 'nombre' , 'apellidos' );
    }


    /**
     * @return mixed
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * @param mixed $titulo
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;
    }

    /**
     * @return mixed
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * @param mixed $codigo
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;
    }

    /**
     * @return mixed
     */
    public function getApellidos()
    {
        return $this->apellidos;
    }

    /**
     * @param mixed $numpag
     */
    public function setApellidos($apellidos)
    {
        $this->apellidos = $apellidos;
    }

}