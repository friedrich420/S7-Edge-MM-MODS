.class Lcom/android/systemui/volume/VolumeDialogMotion$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumeDialogMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 166
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show.onAnimationCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->mCancelled:Z

    .line 168
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 163
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show.onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$500(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$700(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 159
    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAnimationEnd - Reposition ExpandButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$500(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mContents:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$700(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$4;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/volume/VolumeDialogMotion;->setShowing(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$800(Lcom/android/systemui/volume/VolumeDialogMotion;Z)V

    goto :goto_0
.end method
