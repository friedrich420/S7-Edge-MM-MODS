.class Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;
.super Ljava/lang/Object;
.source "ChooseLockUniversal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 336
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 338
    return-void
.end method
