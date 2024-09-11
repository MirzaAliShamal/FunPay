<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable,HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id',
        'employee_id',
        'employee_old_id',
        'name',
        'password',
        'strategic_unit',
        'designation',
        'email',
        'functionally_reports_to',
        'functional_head_name',
        'administratively_reports_to',
        'admin_head_name',
        'gender',
        'address',
        'phone_number',
        'role_id',
        'status',
        'su_head',
        'unique_id',
        'org_o',
        'profile_img',
        'authenticated_id',
        'created_by',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    public function role(){
        return $this->belongsTo(Role::class,'role_id','id');
    }
    public function hasRole($roleName)
    {
        return $this->roles->where('guard_name', $roleName)->count() > 0;
    }
    // public function pmoforms()
    // {
    //     return $this->hasMany(Pmoform::class, 'su_head');
    // }
    
    // public function profile() {
    //     return $this->hasOne(userprofile::class, 'employee_id', 'user_employee_id'); // Adjust the related model if needed
    // }

}
