<?php
namespace App;
use Illuminate\Database\Eloquent\Model;
class Payments extends Model
{
    protected $table = 'payment_settings';

    protected $fillable = ['user_id'];

    public $timestamps = true;
    
		 
}
