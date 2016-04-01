.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$6;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;->wipeDeviceOrUserLocked(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .registers 3

    .prologue
    .line 5291
    iput-object p1, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 5298
    :try_start_0
    iget-object v4, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 5299
    .local v3, "pm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_45

    iget v4, p0, val$userHandle:I

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 5300
    const-string v4, "DevicePolicyManagerService"

    const-string/jumbo v5, "wipeDeviceOrUserLocked removing knox "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_43

    .line 5302
    :try_start_1f
    iget v4, p0, val$userHandle:I

    invoke-static {v4}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I
    :try_end_24
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_24} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_43

    .line 5322
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_24
    :goto_24
    return-void

    .line 5303
    .restart local v3    # "pm":Landroid/os/PersonaManager;
    :catch_25
    move-exception v1

    .line 5304
    .local v1, "e":Ljava/lang/SecurityException;
    :try_start_26
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecurityException occured, cannot remove knox: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5319
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :catch_43
    move-exception v4

    goto :goto_24

    .line 5307
    .restart local v3    # "pm":Landroid/os/PersonaManager;
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5308
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    iget v5, p0, val$userHandle:I

    if-ne v4, v5, :cond_57

    .line 5309
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 5312
    :cond_57
    iget-object v4, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget v5, p0, val$userHandle:I

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isManagedProfile(I)Z
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v2

    .line 5313
    .local v2, "isManagedProfile":Z
    iget-object v4, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, val$userHandle:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->removeUser(I)Z

    move-result v4

    if-nez v4, :cond_86

    .line 5314
    const-string v4, "DevicePolicyManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t remove user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, val$userHandle:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 5315
    :cond_86
    if-eqz v2, :cond_24

    .line 5316
    iget-object v4, p0, this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    # invokes: Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendWipeProfileNotification()V
    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_8d} :catch_43

    goto :goto_24
.end method
