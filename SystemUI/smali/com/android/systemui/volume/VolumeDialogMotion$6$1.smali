.class Lcom/android/systemui/volume/VolumeDialogMotion$6$1;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion$6;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogMotion$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion$6;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDialog.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$6;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$900(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$6;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$6$1;->this$1:Lcom/android/systemui/volume/VolumeDialogMotion$6;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogMotion$6;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/VolumeDialogMotion;->setDismissing(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$1000(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V

    .line 245
    return-void
.end method
