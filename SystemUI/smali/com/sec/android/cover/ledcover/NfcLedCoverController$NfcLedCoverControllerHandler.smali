.class Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;
.super Landroid/os/Handler;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcLedCoverControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController;
    .param p2, "x1"    # Lcom/sec/android/cover/ledcover/NfcLedCoverController$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 156
    .local v0, "ledCmd":I
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send cached command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$NfcLedCoverControllerHandler;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v0}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
