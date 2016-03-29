.class Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;
.super Landroid/os/Handler;
.source "EthernetSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/EthernetSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/EthernetSignalController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;->this$0:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/EthernetSignalController;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/EthernetSignalController$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;-><init>(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 124
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;->this$0:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    # getter for: Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mEthernetChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->access$100(Lcom/android/systemui/statusbar/policy/EthernetSignalController;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;->this$0:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->mTag:Ljava/lang/String;

    const-string v1, "Failed to connect to Ethernet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EthernetSignalController$EthernetHandler;->this$0:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->setActivity(I)V

    goto :goto_0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
