.class Lcom/android/server/QuickConnectService$2;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "QuickConnectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QuickConnectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QuickConnectService;


# direct methods
.method constructor <init>(Lcom/android/server/QuickConnectService;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, this$0:Lcom/android/server/QuickConnectService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .registers 7
    .param p1, "newProfileId"    # I

    .prologue
    .line 294
    iget-object v2, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/QuickConnectService;->access$200(Lcom/android/server/QuickConnectService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 295
    .local v1, "userManager":Landroid/os/UserManager;
    const/4 v0, 0x0

    .line 296
    .local v0, "user":Landroid/content/pm/UserInfo;
    const/4 v2, -0x2

    if-ne p1, v2, :cond_4f

    .line 298
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1a} :catch_56

    move-result-object v0

    .line 306
    :goto_1b
    iget-object v3, p0, this$0:Lcom/android/server/QuickConnectService;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-nez v2, :cond_54

    const/4 v2, 0x1

    :goto_2c
    # setter for: Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z
    invoke-static {v3, v2}, Lcom/android/server/QuickConnectService;->access$302(Lcom/android/server/QuickConnectService;Z)Z

    .line 307
    const-string v2, "QuickConnectService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profileChanged: mManagedProfileFocused: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/QuickConnectService;

    # getter for: Lcom/android/server/QuickConnectService;->mManagedProfileFocused:Z
    invoke-static {v4}, Lcom/android/server/QuickConnectService;->access$300(Lcom/android/server/QuickConnectService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 303
    :cond_4f
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_1b

    .line 306
    :cond_54
    const/4 v2, 0x0

    goto :goto_2c

    .line 299
    :catch_56
    move-exception v2

    goto :goto_1b
.end method

.method public onUserSwitchComplete(I)V
    .registers 2
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 3
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 286
    return-void
.end method
