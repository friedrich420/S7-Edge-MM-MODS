.class Lcom/sec/android/cover/CoverViewMediator$1;
.super Landroid/os/Handler;
.source "CoverViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:Lcom/samsung/android/cover/CoverState;

.field final synthetic this$0:Lcom/sec/android/cover/CoverViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/CoverViewMediator;)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : Cover message arrived : msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage : Unknown message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cover/CoverState;

    iput-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    .line 67
    invoke-static {}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->getInstance()Lcom/sec/android/cover/manager/CoverEventHistoryManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverEventHistoryManager;->add(Lcom/samsung/android/cover/CoverState;)V

    .line 68
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->notifyCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V

    .line 71
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-nez v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    .line 74
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 76
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$200(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$200(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 148
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : Unknown cover type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    .line 153
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 90
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getModel()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 91
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage : Current cover model is not supported by CoverService. This cover event will be ignored."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_1

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/cover/CoverViewMediator;->access$300(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/sec/android/cover/CoverViewMediator;->access$200(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 99
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_1

    .line 104
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/miniviewcover/MiniViewCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/cover/CoverViewMediator;->access$300(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 106
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 111
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 113
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.nfc_authentication"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 114
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 116
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/ledcover/LedCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/cover/ledcover/LedCoverController;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 122
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 128
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/custom/MontblancCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/cover/custom/MontblancCoverController;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 130
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 135
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    if-nez v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    new-instance v2, Lcom/sec/android/cover/clearcover/ClearCoverController;

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/sec/android/cover/CoverViewMediator;->access$300(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/cover/clearcover/ClearCoverController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    # setter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverViewMediator;->access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;

    .line 137
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 143
    :sswitch_5
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage : Cover type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/CoverViewMediator$1;->state:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator$1;->this$0:Lcom/sec/android/cover/CoverViewMediator;

    # getter for: Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/cover/CoverViewMediator;->access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto/16 :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_5
        0x3 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x64 -> :sswitch_3
    .end sparse-switch
.end method
