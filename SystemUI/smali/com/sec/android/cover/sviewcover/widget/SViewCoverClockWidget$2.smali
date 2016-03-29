.class Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;
.super Landroid/os/Handler;
.source "SViewCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget$2;->this$0:Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;->access$300(Lcom/sec/android/cover/sviewcover/widget/SViewCoverClockWidget;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
