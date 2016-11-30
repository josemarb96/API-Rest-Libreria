<?php

class LibroModel implements JsonSerializable
{
    private $codigo;
    private $titulo;
    private $editorial;

    public function __construct($cod,$titulo,$editorial)
    {
        $this->codigo=$cod;
        $this->titulo=$titulo;
        $this->editorial=$editorial;
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
            'titulo' => $this->titulo,
            'editorial' => $this->editorial
        );
    }

    public function __sleep(){
        return array('codigo' , 'titulo' , 'editorial' );
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
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * @param mixed $codigo
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;
    }

    /**
     * @return mixed
     */
    public function getEditorial()
    {
        return $this->editorial;
    }

    /**
     * @param mixed $numpag
     */
    public function setEditorial($editorial)
    {
        $this->editorial = $editorial;
    }

}