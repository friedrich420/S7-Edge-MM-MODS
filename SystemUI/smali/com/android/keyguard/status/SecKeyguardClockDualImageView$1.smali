.class Lcom/android/keyguard/status/SecKeyguardClockDualImageView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockDualImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockDualImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualImageView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualImageView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->setClockStyle()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockDualImageView;->access$000(Lcom/android/keyguard/status/SecKeyguardClockDualImageView;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
