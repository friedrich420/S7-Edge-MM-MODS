.class Lcom/android/keyguard/status/SecKeyguardClockSingleView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/status/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/status/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/status/SecKeyguardClockSingleView;->setClockStyle()V
    invoke-static {v0}, Lcom/android/keyguard/status/SecKeyguardClockSingleView;->access$000(Lcom/android/keyguard/status/SecKeyguardClockSingleView;)V

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method
