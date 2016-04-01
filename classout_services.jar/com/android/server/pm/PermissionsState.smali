.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionState;,
        Lcom/android/server/pm/PermissionsState$PermissionData;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, NO_GIDS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, NO_GIDS:[I

    iput-object v0, p0, mGlobalGids:[I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .registers 3
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, NO_GIDS:[I

    iput-object v0, p0, mGlobalGids:[I

    .line 72
    invoke-virtual {p0, p1}, copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 73
    return-void
.end method

.method private static appendInts([I[I)[I
    .registers 6
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .prologue
    .line 521
    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    .line 522
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_12

    aget v1, v0, v2

    .line 523
    .local v1, "guid":I
    invoke-static {p0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 526
    .end local v0    # "arr$":[I
    .end local v1    # "guid":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_12
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .registers 4
    .param p0, "userId"    # I

    .prologue
    .line 530
    const/4 v0, -0x1

    if-eq p0, v0, :cond_1e

    if-gez p0, :cond_1e

    .line 531
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1e
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_5

    .line 555
    :cond_4
    :goto_4
    return-void

    .line 551
    :cond_5
    iget-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    goto :goto_4
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .registers 5
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 536
    iget-object v1, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_b

    .line 537
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, mPermissions:Landroid/util/ArrayMap;

    .line 539
    :cond_b
    iget-object v1, p0, mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 540
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_23

    .line 541
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 542
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_23
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_6

    .line 443
    :cond_5
    :goto_5
    return-object v1

    .line 439
    :cond_6
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 440
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_5

    .line 443
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    goto :goto_5
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p1}, enforceValidUserId(I)V

    .line 449
    iget-object v5, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_c

    .line 450
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 465
    :cond_b
    return-object v4

    .line 453
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v5, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 456
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_b

    .line 457
    iget-object v5, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 459
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v3

    .line 460
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_2b

    .line 461
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 11
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 469
    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v7, p2}, hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 489
    :cond_b
    :goto_b
    return v4

    .line 473
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_33

    move v0, v5

    .line 474
    .local v0, "hasGids":Z
    :goto_17
    if-eqz v0, :cond_35

    invoke-virtual {p0, p2}, computeGids(I)[I

    move-result-object v2

    .line 476
    .local v2, "oldGids":[I
    :goto_1d
    invoke-direct {p0, p1}, ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 478
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 482
    if-eqz v0, :cond_38

    .line 483
    invoke-virtual {p0, p2}, computeGids(I)[I

    move-result-object v1

    .line 484
    .local v1, "newGids":[I
    array-length v4, v2

    array-length v7, v1

    if-eq v4, v7, :cond_38

    move v4, v5

    .line 485
    goto :goto_b

    .end local v0    # "hasGids":Z
    .end local v1    # "newGids":[I
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_33
    move v0, v6

    .line 473
    goto :goto_17

    .line 474
    .restart local v0    # "hasGids":Z
    :cond_35
    sget-object v2, NO_GIDS:[I

    goto :goto_1d

    .restart local v2    # "oldGids":[I
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_38
    move v4, v6

    .line 489
    goto :goto_b
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 12
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    .line 493
    iget-object v7, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v7, p2}, hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 517
    :cond_b
    :goto_b
    return v4

    .line 497
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v7

    if-nez v7, :cond_44

    move v0, v5

    .line 498
    .local v0, "hasGids":Z
    :goto_17
    if-eqz v0, :cond_46

    invoke-virtual {p0, p2}, computeGids(I)[I

    move-result-object v2

    .line 500
    .local v2, "oldGids":[I
    :goto_1d
    iget-object v7, p0, mPermissions:Landroid/util/ArrayMap;

    iget-object v8, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 502
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 506
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 507
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, ensureNoPermissionData(Ljava/lang/String;)V

    .line 510
    :cond_38
    if-eqz v0, :cond_49

    .line 511
    invoke-virtual {p0, p2}, computeGids(I)[I

    move-result-object v1

    .line 512
    .local v1, "newGids":[I
    array-length v4, v2

    array-length v7, v1

    if-eq v4, v7, :cond_49

    move v4, v5

    .line 513
    goto :goto_b

    .end local v0    # "hasGids":Z
    .end local v1    # "newGids":[I
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_44
    move v0, v6

    .line 497
    goto :goto_17

    .line 498
    .restart local v0    # "hasGids":Z
    :cond_46
    sget-object v2, NO_GIDS:[I

    goto :goto_1d

    .restart local v2    # "oldGids":[I
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_49
    move v4, v6

    .line 517
    goto :goto_b
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 388
    invoke-static {p1}, enforceValidUserId(I)V

    .line 390
    iget-object v0, p0, mGlobalGids:[I

    .line 392
    .local v0, "gids":[I
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_38

    .line 393
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 394
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v4, :cond_38

    .line 395
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_23

    .line 394
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 399
    :cond_23
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 400
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v2

    .line 401
    .local v2, "permGids":[I
    sget-object v6, NO_GIDS:[I

    if-eq v2, v6, :cond_20

    .line 402
    invoke-static {v0, v2}, appendInts([I[I)[I

    move-result-object v0

    goto :goto_20

    .line 407
    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_38
    return-object v0
.end method

.method public computeGids([I)[I
    .registers 8
    .param p1, "userIds"    # [I

    .prologue
    .line 417
    iget-object v1, p0, mGlobalGids:[I

    .line 419
    .local v1, "gids":[I
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_14

    aget v5, v0, v2

    .line 420
    .local v5, "userId":I
    invoke-virtual {p0, v5}, computeGids(I)[I

    move-result-object v4

    .line 421
    .local v4, "userGids":[I
    invoke-static {v1, v4}, appendInts([I[I)[I

    move-result-object v1

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 424
    .end local v4    # "userGids":[I
    .end local v5    # "userId":I
    :cond_14
    return-object v1
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    .line 92
    if-ne p1, p0, :cond_3

    .line 119
    :cond_2
    :goto_2
    return-void

    .line 95
    :cond_3
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    if-eqz v4, :cond_e

    .line 96
    iget-object v4, p1, mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_43

    .line 97
    const/4 v4, 0x0

    iput-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    .line 102
    :cond_e
    :goto_e
    iget-object v4, p1, mPermissions:Landroid/util/ArrayMap;

    if-eqz v4, :cond_49

    .line 103
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_1d

    .line 104
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    .line 106
    :cond_1d
    iget-object v4, p1, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 107
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    if-ge v0, v2, :cond_49

    .line 108
    iget-object v4, p1, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p1, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 110
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    invoke-direct {v5, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 99
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_43
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    goto :goto_e

    .line 114
    :cond_49
    sget-object v4, NO_GIDS:[I

    iput-object v4, p0, mGlobalGids:[I

    .line 115
    iget-object v4, p1, mGlobalGids:[I

    sget-object v5, NO_GIDS:[I

    if-eq v4, v5, :cond_2

    .line 116
    iget-object v4, p1, mGlobalGids:[I

    iget-object v5, p1, mGlobalGids:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, mGlobalGids:[I

    goto :goto_2
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, -0x1

    invoke-direct {p0, v0}, getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 320
    invoke-virtual {p0, p1}, getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    .line 321
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_b

    .line 322
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    .line 328
    :goto_a
    return v2

    .line 324
    :cond_b
    invoke-virtual {p0, p1, p2}, getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    .line 325
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_16

    .line 326
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    goto :goto_a

    .line 328
    :cond_16
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getPermissions(I)Ljava/util/Set;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, enforceValidUserId(I)V

    .line 247
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_c

    .line 248
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 268
    :cond_b
    return-object v3

    .line 251
    :cond_c
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 253
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 254
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    if-ge v0, v2, :cond_b

    .line 255
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 258
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2b
    const/4 v4, -0x1

    if-eq p1, v4, :cond_37

    .line 262
    invoke-virtual {p0, v1, p1}, hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 263
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 289
    invoke-static {p2}, enforceValidUserId(I)V

    .line 290
    invoke-direct {p0, p1, p2}, getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {p1}, enforceValidUserId(I)V

    .line 309
    invoke-direct {p0, p1}, getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 130
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 155
    invoke-static {p2}, enforceValidUserId(I)V

    .line 156
    if-ne p2, v0, :cond_7

    .line 159
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2}, grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    goto :goto_6
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {p2}, enforceValidUserId(I)V

    .line 213
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_9

    .line 218
    :cond_8
    :goto_8
    return v1

    .line 217
    :cond_9
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 218
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_8

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_8
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 226
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_6

    .line 234
    :cond_5
    :goto_5
    return v1

    .line 229
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_5

    .line 230
    iget-object v2, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 231
    const/4 v1, 0x1

    goto :goto_5

    .line 229
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_c
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 188
    invoke-static {p2}, enforceValidUserId(I)V

    .line 189
    invoke-virtual {p0, p1}, hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0, p1, p2}, hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 431
    sget-object v0, NO_GIDS:[I

    iput-object v0, p0, mGlobalGids:[I

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    .line 433
    return-void
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .registers 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 142
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .registers 4
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 172
    invoke-static {p2}, enforceValidUserId(I)V

    .line 173
    if-ne p2, v0, :cond_7

    .line 176
    :goto_6
    return v0

    :cond_7
    invoke-direct {p0, p1, p2}, revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    goto :goto_6
.end method

.method public setGlobalGids([I)V
    .registers 3
    .param p1, "globalGids"    # [I

    .prologue
    .line 81
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 82
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, mGlobalGids:[I

    .line 84
    :cond_d
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .registers 10
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-static {p2}, enforceValidUserId(I)V

    .line 343
    if-nez p4, :cond_8

    if-eqz p3, :cond_10

    :cond_8
    const/4 v0, 0x1

    .line 345
    .local v0, "mayChangeFlags":Z
    :goto_9
    iget-object v3, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v3, :cond_15

    .line 346
    if-nez v0, :cond_12

    .line 360
    :cond_f
    :goto_f
    return v2

    .end local v0    # "mayChangeFlags":Z
    :cond_10
    move v0, v2

    .line 343
    goto :goto_9

    .line 349
    .restart local v0    # "mayChangeFlags":Z
    :cond_12
    invoke-direct {p0, p1}, ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 352
    :cond_15
    iget-object v3, p0, mPermissions:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 353
    .local v1, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v1, :cond_27

    .line 354
    if-eqz v0, :cond_f

    .line 357
    invoke-direct {p0, p1}, ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v1

    .line 360
    :cond_27
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v2

    goto :goto_f
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    .line 365
    invoke-static {p1}, enforceValidUserId(I)V

    .line 367
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_9

    .line 368
    const/4 v0, 0x0

    .line 376
    :cond_8
    return v0

    .line 370
    :cond_9
    const/4 v0, 0x0

    .line 371
    .local v0, "changed":Z
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 372
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_8

    .line 373
    iget-object v4, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 374
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method
