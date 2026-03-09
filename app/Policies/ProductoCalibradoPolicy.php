<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ProductoCalibrado;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProductoCalibradoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ProductoCalibrado');
    }

    public function view(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('View:ProductoCalibrado');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ProductoCalibrado');
    }

    public function update(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('Update:ProductoCalibrado');
    }

    public function delete(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('Delete:ProductoCalibrado');
    }

    public function restore(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('Restore:ProductoCalibrado');
    }

    public function forceDelete(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('ForceDelete:ProductoCalibrado');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ProductoCalibrado');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ProductoCalibrado');
    }

    public function replicate(AuthUser $authUser, ProductoCalibrado $productoCalibrado): bool
    {
        return $authUser->can('Replicate:ProductoCalibrado');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ProductoCalibrado');
    }

}