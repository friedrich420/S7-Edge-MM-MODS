.class Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate$1;
.super Landroid/os/Handler;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/cover/CoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cover/CoverManager;)V
    .registers 4
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 824
    iput-object p1, p0, this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    iput-object p3, p0, val$this$0:Lcom/samsung/android/cover/CoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 827
    iget-object v0, p0, this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 828
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 837
    :cond_d
    :goto_d
    return-void

    .line 830
    :pswitch_e
    iget-object v0, p0, this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchAccept()V

    goto :goto_d

    .line 833
    :pswitch_18
    iget-object v0, p0, this$1:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    # getter for: Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->mListener:Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;
    invoke-static {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->access$300(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;)Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;->onCoverTouchReject()V

    goto :goto_d

    .line 828
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
        :pswitch_18
    .end packed-switch
.end method
