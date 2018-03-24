#include "GM/Entities/BaseEntities/collider"

// Test colliders

// create_col_success_return_not_zero
//
Test:create_col_success()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, -1, -1);
    DestroyDynamicArea(colid);
    ASSERT(colid != 0);
}

// is_valid_collider_success_must_return_1
//
Test:is_valid_collider_success()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, -1, -1);
    new result = IsColliderExists(colid);
    DestroyDynamicArea(colid);
    ASSERT(result == 1);
}

// is_valid_collider_fail_must_return_0
//
Test:is_valid_collider_fail()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, -1, -1);
    DestroyDynamicArea(colid);
    new result = IsColliderExists(colid);
    ASSERT(result == 0);
}

//
// must return 1
Test:destroy_collider_success()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, -1, -1);
    new result = DestroyCollider(colid);
    ASSERT(result == 1);
}

//
// must return 0
Test:destroy_collider_fail()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, -1, -1);
    DestroyCollider(colid);
    new result = DestroyCollider(colid); // already destroyed
    ASSERT(result == 0);
}

// must return 1
// data_type = 2
// data_id = 2
//
Test:get_col_data_success()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, 2, 2);
    new data_type, data_id;
    new func_succ = GetColliderData(colid, data_type, data_id);
    DestroyCollider(colid);
    ASSERT(data_type == 2);
    ASSERT(data_id == 2);
    ASSERT(func_succ == 1);
}

Test:get_col_data_fail()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, 2, 2);
    new data_type, data_id;
    DestroyCollider(colid);
    new func_succ = GetColliderData(colid, data_type, data_id);
    ASSERT(func_succ == 0);
}

// must return 1
Test:SetColliderPosition_success()
{
    new colid = CreateCollider(1.1, 1.1, 1.1, 2, 2);
    new result = SetColliderPosition(colid, 2.0, 2.0, 2.0);
    DestroyCollider(colid);
    ASSERT(result == 1);
}

// must return 0
Test:SetColliderPosition_fail()
{
    new colid = 30000;
    new result = SetColliderPosition(colid, 2.0, 2.0, 2.0);
    ASSERT(result == 0);
}