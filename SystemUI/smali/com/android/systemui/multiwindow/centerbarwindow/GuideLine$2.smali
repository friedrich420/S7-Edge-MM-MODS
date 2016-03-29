.class Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$2;
.super Landroid/os/Handler;
.source "GuideLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$2;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 561
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    return-void

    .line 563
    :pswitch_0
    const-string v0, "GuideLine"

    const-string v1, "hide by timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$2;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->hide()V

    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
