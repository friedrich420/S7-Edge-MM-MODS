.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;
.super Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.source "CoverCircleLeftView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_contact:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;->mArrowResId:I

    .line 39
    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contact_button:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;->mContentResId:I

    .line 41
    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->CALL:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleLeftView;->setWidgetType(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V

    .line 47
    return-void
.end method
