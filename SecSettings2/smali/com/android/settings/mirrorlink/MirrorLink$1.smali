.class Lcom/android/settings/mirrorlink/MirrorLink$1;
.super Ljava/lang/Object;
.source "MirrorLink.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/mirrorlink/MirrorLink;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/mirrorlink/MirrorLink;


# direct methods
.method constructor <init>(Lcom/android/settings/mirrorlink/MirrorLink;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    invoke-static {p2}, Lcom/mirrorlink/android/service/IMirrorlinkManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v2

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 250
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    new-instance v2, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;-><init>(Lcom/android/settings/mirrorlink/MirrorLink$1;)V

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    invoke-static {v1, v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->registerListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # invokes: Lcom/android/settings/mirrorlink/MirrorLink;->updateMirrorLinkApplications()V
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$300(Lcom/android/settings/mirrorlink/MirrorLink;)V

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    const-string v1, "MirrorLink"

    const-string v2, "MirrorlinkManager service is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1}, Lcom/android/settings/mirrorlink/MirrorLink;->access$000(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # getter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    invoke-static {v2}, Lcom/android/settings/mirrorlink/MirrorLink;->access$100(Lcom/android/settings/mirrorlink/MirrorLink;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mirrorlink/android/service/IMirrorlinkManager;->unRegisterListener(Lcom/mirrorlink/android/service/IMirrorlinkListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mservice:Lcom/mirrorlink/android/service/IMirrorlinkManager;
    invoke-static {v1, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->access$002(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/mirrorlink/android/service/IMirrorlinkManager;)Lcom/mirrorlink/android/service/IMirrorlinkManager;

    .line 243
    iget-object v1, p0, Lcom/android/settings/mirrorlink/MirrorLink$1;->this$0:Lcom/android/settings/mirrorlink/MirrorLink;

    # setter for: Lcom/android/settings/mirrorlink/MirrorLink;->mMirrorlinkListener:Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;
    invoke-static {v1, v3}, Lcom/android/settings/mirrorlink/MirrorLink;->access$102(Lcom/android/settings/mirrorlink/MirrorLink;Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;)Lcom/android/settings/mirrorlink/MirrorLink$MirrorlinkListener;

    .line 245
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
