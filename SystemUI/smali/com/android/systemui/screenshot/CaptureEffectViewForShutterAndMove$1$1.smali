.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterAndMove.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    # getter for: Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;
    invoke-static {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->access$000(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->onFinish()V

    .line 107
    :cond_0
    return-void
.end method
