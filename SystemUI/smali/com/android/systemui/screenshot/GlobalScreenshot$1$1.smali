.class Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$1;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$1;)V
    .locals 0

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # invokes: Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$1$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$1;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    # getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;->show()V

    .line 1249
    monitor-exit v1

    .line 1250
    return-void

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
