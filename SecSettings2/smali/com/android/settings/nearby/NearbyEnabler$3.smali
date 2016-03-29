.class Lcom/android/settings/nearby/NearbyEnabler$3;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbyEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 634
    invoke-static {p2}, Lcom/android/settings/nearby/IMediaServer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    # setter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$702(Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 635
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 638
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, "mIMediaServer == null"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_0
    return-void

    .line 642
    :cond_0
    :try_start_0
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->enablerType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$800(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/nearby/IMediaServer;->resume(Ljava/lang/String;)V

    .line 644
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$900(Lcom/android/settings/nearby/NearbyEnabler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 645
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    const-string v4, "Auto Start!!"

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {}, Lcom/android/settings/nearby/NearbyEnabler;->access$700()Lcom/android/settings/nearby/IMediaServer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->startMediaServer()V

    .line 647
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/nearby/NearbyEnabler;->isAutoStart:Z
    invoke-static {v2, v3}, Lcom/android/settings/nearby/NearbyEnabler;->access$902(Lcom/android/settings/nearby/NearbyEnabler;Z)Z

    .line 654
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 656
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # invokes: Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1100(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 667
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # invokes: Lcom/android/settings/nearby/NearbyEnabler;->setDefaultValues()V
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1200(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 669
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.connected_mediaServer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 670
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler$3;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    # getter for: Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/nearby/NearbyEnabler;->access$1300(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 659
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NearbyEnabler"

    const-string v3, "onServiceConnected"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 628
    const-string v0, "NearbyEnabler"

    const-string v1, "onServiceDisconnected"

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v0}, Lcom/android/settings/nearby/NearbyEnabler;->access$702(Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;

    .line 630
    return-void
.end method
