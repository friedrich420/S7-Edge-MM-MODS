.class Lcom/android/keyguard/status/SecKeyguardWeatherView$2;
.super Landroid/os/Handler;
.source "SecKeyguardWeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/SecKeyguardWeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/SecKeyguardWeatherView;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    .line 97
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/status/SecKeyguardWeatherView$2;->this$0:Lcom/android/keyguard/status/SecKeyguardWeatherView;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/status/SecKeyguardWeatherInfo;

    # invokes: Lcom/android/keyguard/status/SecKeyguardWeatherView;->handleWeatherUpdate(Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V
    invoke-static {v2, v1}, Lcom/android/keyguard/status/SecKeyguardWeatherView;->access$500(Lcom/android/keyguard/status/SecKeyguardWeatherView;Lcom/android/keyguard/status/SecKeyguardWeatherInfo;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1330
        :pswitch_0
    .end packed-switch
.end method
