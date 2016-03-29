.class Lcom/android/keyguard/effect/KeyguardEffectViewController$2;
.super Landroid/os/Handler;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$100(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$200(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    goto :goto_0

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewController$2;->this$0:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/effect/KeyguardEffectViewController;->makeLiveWeatherDeleteNotification()V
    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->access$300(Lcom/android/keyguard/effect/KeyguardEffectViewController;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
