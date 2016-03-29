.class Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;
.super Ljava/lang/Object;
.source "FingerprintIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/VI/FingerprintIconView;->beginAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/VI/FingerprintIconView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 119
    const-string v1, "current"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 120
    .local v0, "current":F
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    iput v0, v1, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->percent:F

    .line 121
    iget-object v1, p0, Lcom/android/settings/fingerprint/VI/FingerprintIconView$2;->this$0:Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->invalidate()V

    .line 123
    return-void
.end method
