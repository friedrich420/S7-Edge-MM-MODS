.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;
.super Landroid/os/Handler;
.source "MiniViewCoverMainPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 59
    const-string v0, "MiniViewCoverMainPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "MiniViewCoverMainPage"

    const-string v1, "hide charging text"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->isBatteryChargingShown:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$202(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;Z)Z

    .line 67
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->adjustWidgetVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainPage;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method
