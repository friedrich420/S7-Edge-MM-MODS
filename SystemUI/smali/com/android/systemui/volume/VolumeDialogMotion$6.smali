.class Lcom/android/systemui/volume/VolumeDialogMotion$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 251
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss.onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->mCancelled:Z

    .line 253
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dismiss.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$1100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;-><init>(Lcom/android/systemui/volume/VolumeDialogMotion$6;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
