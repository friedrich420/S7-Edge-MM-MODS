.class Lcom/android/systemui/statusbar/phone/DozeScrimController$5;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 266
    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOutDuration()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    # getter for: Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;

    move-result-object v7

    # invokes: Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$1100(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
