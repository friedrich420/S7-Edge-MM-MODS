.class Lcom/android/systemui/volume/VolumeDialogMotion$3;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;->startShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogMotion;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$300(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevronPositionAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$300(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 141
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # invokes: Lcom/android/systemui/volume/VolumeDialogMotion;->chevronPosY()I
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$400(Lcom/android/systemui/volume/VolumeDialogMotion;)I

    move-result v0

    .line 142
    .local v0, "posY":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mChevron:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$500(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 143
    int-to-float v2, v0

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 144
    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "posY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDialogView.getTranslationY() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogMotion$3;->this$0:Lcom/android/systemui/volume/VolumeDialogMotion;

    # getter for: Lcom/android/systemui/volume/VolumeDialogMotion;->mDialogView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/systemui/volume/VolumeDialogMotion;->access$100(Lcom/android/systemui/volume/VolumeDialogMotion;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
