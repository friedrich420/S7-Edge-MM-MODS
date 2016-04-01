.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field private mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .prologue
    .line 10156
    iput-object p1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    .prologue
    .line 10156
    invoke-direct {p0, p1}, <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 10156
    invoke-direct {p0, p1, p2}, notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10205
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v5

    .line 10206
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10207
    .local v3, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1e

    .line 10208
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 10209
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    if-ge v0, v2, :cond_21

    .line 10210
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 10211
    .local v1, "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    invoke-interface {v1, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 10209
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 10207
    .end local v0    # "i":I
    .end local v1    # "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    .end local v2    # "listenerCount":I
    .end local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :catchall_1e
    move-exception v4

    :try_start_1f
    monitor-exit v5
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v4

    .line 10213
    .restart local v0    # "i":I
    .restart local v2    # "listenerCount":I
    .restart local v3    # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :cond_21
    return-void
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .prologue
    .line 10185
    iget-object v1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v1

    .line 10186
    :try_start_3
    iget-object v0, p0, mWidgetProviderListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 10187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWidgetProviderListeners:Ljava/util/List;

    .line 10189
    :cond_e
    iget-object v0, p0, mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 10190
    iget-object v0, p0, mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10192
    :cond_1b
    monitor-exit v1

    .line 10193
    return-void

    .line 10192
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 7
    .param p1, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10161
    iget-object v4, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v4

    .line 10162
    :try_start_3
    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;
    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v3

    if-nez v3, :cond_11

    .line 10163
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v4

    .line 10178
    :goto_10
    return-object v3

    .line 10165
    :cond_11
    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # getter for: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDeviceOwner:Lcom/android/server/devicepolicy/DeviceOwner;
    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DeviceOwner;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DeviceOwner;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 10166
    .local v1, "ownerComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_26

    .line 10167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v4

    goto :goto_10

    .line 10179
    .end local v1    # "ownerComponent":Landroid/content/ComponentName;
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v3

    .line 10170
    .restart local v1    # "ownerComponent":Landroid/content/ComponentName;
    :cond_26
    :try_start_26
    iget-object v3, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 10171
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 10173
    .local v0, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_42

    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v3, :cond_42

    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 10175
    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v4

    goto :goto_10

    .line 10178
    :cond_48
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_26 .. :try_end_4b} :catchall_23

    goto :goto_10
.end method

.method public isActiveAdminWithPolicy(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "reqPolicy"    # I

    .prologue
    .line 10197
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 10198
    .local v0, "userId":I
    iget-object v2, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    monitor-enter v2

    .line 10199
    :try_start_7
    iget-object v1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminWithPolicyForUidLocked(Landroid/content/ComponentName;III)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    invoke-static {v1, v3, p2, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;III)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_11
    monitor-exit v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    .line 10200
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method
