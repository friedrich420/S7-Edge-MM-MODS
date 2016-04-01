.class Lcom/android/internal/app/ChooserActivity$RowScale;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowScale"
.end annotation


# static fields
.field private static final DURATION:I = 0x190

.field public static final PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/internal/app/ChooserActivity$RowScale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field mScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1008
    new-instance v0, Lcom/android/internal/app/ChooserActivity$RowScale$1;

    const-string/jumbo v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$RowScale$1;-><init>(Ljava/lang/String;)V

    sput-object v0, PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V
    .registers 8
    .param p1, "adapter"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    iput-object p1, p0, mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 1024
    iput p2, p0, mScale:F

    .line 1025
    cmpl-float v0, p2, p3

    if-nez v0, :cond_f

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    .line 1031
    :goto_e
    return-void

    .line 1030
    :cond_f
    sget-object v0, PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    goto :goto_e
.end method


# virtual methods
.method public cancelAnimation()V
    .registers 2

    .prologue
    .line 1051
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 1052
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1054
    :cond_9
    return-void
.end method

.method public get()F
    .registers 2

    .prologue
    .line 1041
    iget v0, p0, mScale:F

    return v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1034
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 1035
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1037
    :cond_9
    return-object p0
.end method

.method public startAnimation()V
    .registers 2

    .prologue
    .line 1045
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    .line 1046
    iget-object v0, p0, mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1048
    :cond_9
    return-void
.end method
