.class public Lcom/android/settings/widget/SpinnerCustomTextView;
.super Landroid/widget/TextView;
.source "SpinnerCustomTextView.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/SpinnerCustomTextView;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/android/settings/widget/SpinnerCustomTextView;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 45
    return-void
.end method
