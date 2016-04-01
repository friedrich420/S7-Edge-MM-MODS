.class final Lcom/android/internal/widget/FloatingToolbar$ViewFader;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewFader"
.end annotation


# static fields
.field private static final FADE_IN_DURATION:I = 0x96

.field private static final FADE_OUT_DURATION:I = 0xfa


# instance fields
.field private final mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private final mFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 1907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1908
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, mView:Landroid/view/View;

    .line 1909
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_34

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1911
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_3c

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1913
    return-void

    .line 1909
    nop

    :array_34
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1911
    :array_3c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/android/internal/widget/FloatingToolbar$1;

    .prologue
    .line 1898
    invoke-direct {p0, p1}, <init>(Landroid/view/View;)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .registers 2

    .prologue
    .line 1934
    iget-object v0, p0, mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1935
    iget-object v0, p0, mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1936
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 1916
    invoke-direct {p0}, cancelFadeAnimations()V

    .line 1917
    if-eqz p1, :cond_b

    .line 1918
    iget-object v0, p0, mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1922
    :goto_a
    return-void

    .line 1920
    :cond_b
    iget-object v0, p0, mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a
.end method

.method public fadeOut(Z)V
    .registers 4
    .param p1, "animate"    # Z

    .prologue
    .line 1925
    invoke-direct {p0}, cancelFadeAnimations()V

    .line 1926
    if-eqz p1, :cond_b

    .line 1927
    iget-object v0, p0, mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1931
    :goto_a
    return-void

    .line 1929
    :cond_b
    iget-object v0, p0, mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a
.end method
