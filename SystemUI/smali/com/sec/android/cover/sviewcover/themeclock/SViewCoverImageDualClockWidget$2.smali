.class Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$2;
.super Landroid/os/Handler;
.source "SViewCoverImageDualClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageDualClockWidget;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
