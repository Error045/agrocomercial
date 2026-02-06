<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RolesSeeder extends Seeder
{
    public function run(): void
    {
        $roles = [
            'super_admin',
            'Administrador',
            'Oficina',
            'Jefe Packing',
            'Operador Proceso',
            'Operador Grua',
            'Vendedor Jefe',
            'Vendedor',
        ];

        foreach ($roles as $role) {
            Role::firstOrCreate([
                'name' => $role,
                'guard_name' => 'web'
            ]);
        }
    }
}
