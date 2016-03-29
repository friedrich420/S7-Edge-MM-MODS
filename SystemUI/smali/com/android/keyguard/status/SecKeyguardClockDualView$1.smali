.class Lcom/android/keyguard/status/SecKeyguardClockDualView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockDualView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockDualView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockDualView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockDualView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockDualView;

    invoke-virtual {v0}, Lcom/android/keyguard/status/SecKeyguardClockDualView;->setClockStyle()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
