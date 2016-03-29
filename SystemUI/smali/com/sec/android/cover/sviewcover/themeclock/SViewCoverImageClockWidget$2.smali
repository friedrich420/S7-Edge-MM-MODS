.class Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$2;
.super Landroid/os/Handler;
.source "SViewCoverImageClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;->access$100(Lcom/sec/android/cover/sviewcover/themeclock/SViewCoverImageClockWidget;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
