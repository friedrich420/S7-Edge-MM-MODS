.class final Lcom/android/settings/fingerprint/VI/AnimationHelper$3;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/VI/AnimationHelper;->fromRight(Landroid/view/View;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 83
    const-string v2, "alpha"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 84
    .local v0, "alpha_current":F
    const-string v2, "trans"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 86
    .local v1, "trans_current":F
    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 87
    iget-object v2, p0, Lcom/android/settings/fingerprint/VI/AnimationHelper$3;->val$view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 89
    return-void
.end method
