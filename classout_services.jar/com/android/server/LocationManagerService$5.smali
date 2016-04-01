.class Lcom/android/server/LocationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LocationManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 441
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "action":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_20

    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcast received action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_20
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 448
    iget-object v5, p0, this$0:Lcom/android/server/LocationManagerService;

    const-string v6, "android.intent.extra.user_handle"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # invokes: Lcom/android/server/LocationManagerService;->switchUser(I)V
    invoke-static {v5, v6}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;I)V

    .line 476
    :cond_34
    :goto_34
    return-void

    .line 449
    :cond_35
    const-string v5, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    const-string v5, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 451
    :cond_45
    iget-object v5, p0, this$0:Lcom/android/server/LocationManagerService;

    iget-object v6, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    goto :goto_34

    .line 454
    :cond_51
    const-string v5, "ATT"

    # getter for: Lcom/android/server/LocationManagerService;->mSecSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 455
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 457
    .local v3, "extra":Landroid/os/Bundle;
    if-nez v3, :cond_74

    .line 458
    const-string v5, "LocationManagerService"

    const-string/jumbo v6, "extra is null "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 461
    :cond_74
    const-string v5, "command"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "command":Ljava/lang/String;
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v5, "AT+GPSVALUE"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "at_ret":Landroid/content/Intent;
    iget-object v5, p0, this$0:Lcom/android/server/LocationManagerService;

    const-string/jumbo v6, "gps"

    invoke-virtual {v5, v6}, Lcom/android/server/LocationManagerService;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 466
    const-string v4, "ON"

    .line 471
    .local v4, "response":Ljava/lang/String;
    :goto_ae
    const-string/jumbo v5, "response"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v5, p0, this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_34

    .line 469
    .end local v4    # "response":Ljava/lang/String;
    :cond_bf
    const-string v4, "OFF"

    .restart local v4    # "response":Ljava/lang/String;
    goto :goto_ae
.end method
