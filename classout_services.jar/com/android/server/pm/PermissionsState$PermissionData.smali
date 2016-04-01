.class final Lcom/android/server/pm/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BasePermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserStates:Landroid/util/SparseArray;

    .line 562
    iput-object p1, p0, mPerm:Lcom/android/server/pm/BasePermission;

    .line 563
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V
    .registers 8
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionData;

    .prologue
    .line 566
    iget-object v4, p1, mPerm:Lcom/android/server/pm/BasePermission;

    invoke-direct {p0, v4}, <init>(Lcom/android/server/pm/BasePermission;)V

    .line 567
    iget-object v4, p1, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 568
    .local v2, "otherStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v2, :cond_29

    .line 569
    iget-object v4, p1, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 570
    .local v3, "otherUserId":I
    iget-object v4, p1, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 571
    .local v1, "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionState;

    invoke-direct {v5, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 573
    .end local v1    # "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v3    # "otherUserId":I
    :cond_29
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 681
    invoke-virtual {p0}, isDefault()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, isInstallPermission()Z

    move-result v0

    invoke-static {p1}, isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isInstallPermission()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 685
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ne v1, v0, :cond_13

    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 648
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 576
    iget-object v0, p0, mPerm:Lcom/android/server/pm/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 636
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 637
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_f

    .line 638
    # getter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    .line 640
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 632
    iget-object v0, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 593
    invoke-direct {p0, p1}, isCompatibleUserId(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 609
    :cond_8
    :goto_8
    return v1

    .line 597
    :cond_9
    invoke-virtual {p0, p1}, isGranted(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 601
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 602
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_27

    .line 603
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v1, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 604
    .restart local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    :cond_27
    # setter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    move v1, v2

    .line 609
    goto :goto_8
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isGranted(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 580
    invoke-direct {p0}, isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 581
    const/4 p1, -0x1

    .line 584
    :cond_7
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 585
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_13

    .line 586
    const/4 v1, 0x0

    .line 589
    :goto_12
    return v1

    :cond_13
    # getter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/PermissionsState$PermissionState;)Z

    move-result v1

    goto :goto_12
.end method

.method public revoke(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-direct {p0, p1}, isCompatibleUserId(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 628
    :cond_7
    :goto_7
    return v1

    .line 617
    :cond_8
    invoke-virtual {p0, p1}, isGranted(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 621
    iget-object v2, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 622
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    .line 624
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 625
    iget-object v1, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 628
    :cond_24
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public updateFlags(III)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 652
    invoke-direct {p0}, isInstallPermission()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 653
    const/4 p1, -0x1

    .line 656
    :cond_9
    invoke-direct {p0, p1}, isCompatibleUserId(I)Z

    move-result v5

    if-nez v5, :cond_10

    .line 677
    :cond_f
    :goto_f
    return v4

    .line 660
    :cond_10
    and-int v0, p3, p2

    .line 662
    .local v0, "newFlags":I
    iget-object v5, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 663
    .local v2, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v2, :cond_40

    .line 664
    # getter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    .line 665
    .local v1, "oldFlags":I
    # getter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v5, v6

    or-int/2addr v5, v0

    # setter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v5}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 666
    invoke-virtual {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 667
    iget-object v5, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 669
    :cond_36
    # getter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$100(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    if-eq v5, v1, :cond_3e

    :goto_3c
    move v4, v3

    goto :goto_f

    :cond_3e
    move v3, v4

    goto :goto_3c

    .line 670
    .end local v1    # "oldFlags":I
    :cond_40
    if-eqz v0, :cond_f

    .line 671
    new-instance v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v4, v4, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 672
    .restart local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->access$102(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 673
    iget-object v4, p0, mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v3

    .line 674
    goto :goto_f
.end method
