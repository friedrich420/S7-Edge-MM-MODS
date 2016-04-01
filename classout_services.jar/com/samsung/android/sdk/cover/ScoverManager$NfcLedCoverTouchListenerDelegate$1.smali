.class Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 1089
    iput-object p1, p0, this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    iput-object p3, p0, val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1092
    iget-object v0, p0, this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1093
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 1102
    :cond_d
    :goto_d
    return-void

    .line 1095
    :pswitch_e
    iget-object v0, p0, this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_d

    .line 1098
    :pswitch_18
    iget-object v0, p0, this$1:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_d

    .line 1093
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method
