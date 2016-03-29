.class Lcom/sec/android/cover/ledcover/LedCoverController$1;
.super Landroid/os/Handler;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/LedCoverController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->resetAlarmType()V

    .line 80
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    const/16 v1, 0xf

    const/4 v2, 0x0

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->sendLedData(I[B)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$000(Lcom/sec/android/cover/ledcover/LedCoverController;I[B)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$100(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    .line 83
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$1;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # getter for: Lcom/sec/android/cover/ledcover/LedCoverController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$200(Lcom/sec/android/cover/ledcover/LedCoverController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->releaseWakeLock()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
