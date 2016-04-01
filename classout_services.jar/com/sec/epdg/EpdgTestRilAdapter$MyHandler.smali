.class Lcom/sec/epdg/EpdgTestRilAdapter$MyHandler;
.super Landroid/os/Handler;
.source "EpdgTestRilAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgTestRilAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgTestRilAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgTestRilAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 109
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgTestRilAdapter;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 129
    :goto_5
    return-void

    .line 119
    :pswitch_6
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Got reply for Config"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 122
    :pswitch_e
    const-string v0, "[TESTRILADAPTER]"

    const-string v1, "Got reply for Init"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 116
    :pswitch_data_16
    .packed-switch 0x10
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method
