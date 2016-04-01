.class Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
.super Ljava/lang/Object;
.source "TelecomLoaderService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "x1"    # Lcom/android/server/telecom/TelecomLoaderService$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, <init>(Lcom/android/server/telecom/TelecomLoaderService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 63
    :try_start_0
    new-instance v10, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;

    invoke-direct {v10, p0}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection$1;-><init>(Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;)V

    const/4 v11, 0x0

    invoke-interface {p2, v10, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 69
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 70
    const-string/jumbo v10, "telecom"

    invoke-static {v10, p2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mLock:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$200(Lcom/android/server/telecom/TelecomLoaderService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_10c

    .line 73
    :try_start_20
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-nez v10, :cond_38

    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-nez v10, :cond_38

    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_107

    .line 75
    :cond_38
    const-class v10, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 78
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_80

    .line 79
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 81
    .local v6, "smsComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_80

    .line 82
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .line 83
    .local v5, "requestCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_61
    if-ltz v1, :cond_80

    .line 84
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v9

    .line 85
    .local v9, "userid":I
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSmsAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$300(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    .line 86
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10, v9}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    .line 83
    add-int/lit8 v1, v1, -0x1

    goto :goto_61

    .line 92
    .end local v1    # "i":I
    .end local v5    # "requestCount":I
    .end local v6    # "smsComponent":Landroid/content/ComponentName;
    .end local v9    # "userid":I
    :cond_80
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_bb

    .line 93
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_bb

    .line 96
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .line 97
    .restart local v5    # "requestCount":I
    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_a0
    if-ltz v1, :cond_bb

    .line 98
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 99
    .local v8, "userId":I
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultDialerAppRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$400(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    .line 100
    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    .line 97
    add-int/lit8 v1, v1, -0x1

    goto :goto_a0

    .line 105
    .end local v1    # "i":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "requestCount":I
    .end local v8    # "userId":I
    :cond_bb
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    if-eqz v10, :cond_107

    .line 106
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v12, "telecom"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    .line 108
    .local v7, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v7}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    .line 109
    .local v4, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    if-eqz v4, :cond_107

    .line 110
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/IntArray;->size()I

    move-result v5

    .line 111
    .restart local v5    # "requestCount":I
    invoke-virtual {v4}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "i":I
    :goto_ec
    if-ltz v1, :cond_107

    .line 114
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->get(I)I

    move-result v8

    .line 115
    .restart local v8    # "userId":I
    iget-object v10, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # getter for: Lcom/android/server/telecom/TelecomLoaderService;->mDefaultSimCallManagerRequests:Landroid/util/IntArray;
    invoke-static {v10}, Lcom/android/server/telecom/TelecomLoaderService;->access$500(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/util/IntArray;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/util/IntArray;->remove(I)V

    .line 116
    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSimCallManager(Ljava/lang/String;I)V

    .line 113
    add-int/lit8 v1, v1, -0x1

    goto :goto_ec

    .line 123
    .end local v1    # "i":I
    .end local v2    # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    .end local v5    # "requestCount":I
    .end local v7    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v8    # "userId":I
    :cond_107
    monitor-exit v11

    .line 127
    :goto_108
    return-void

    .line 123
    :catchall_109
    move-exception v10

    monitor-exit v11
    :try_end_10b
    .catchall {:try_start_20 .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v10
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_10c} :catch_10c

    .line 124
    :catch_10c
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string v10, "TelecomLoaderService"

    const-string v11, "Failed linking to death."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_108
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iget-object v0, p0, this$0:Lcom/android/server/telecom/TelecomLoaderService;

    # invokes: Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V
    invoke-static {v0}, Lcom/android/server/telecom/TelecomLoaderService;->access$000(Lcom/android/server/telecom/TelecomLoaderService;)V

    .line 132
    return-void
.end method
