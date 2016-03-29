.class Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;
.super Ljava/lang/Object;
.source "ChooseLockUniversal.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 386
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 406
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 400
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 394
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 390
    return-void
.end method
