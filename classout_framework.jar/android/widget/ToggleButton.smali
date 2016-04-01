.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mTextOn:Ljava/lang/CharSequence;

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mTextOff:Ljava/lang/CharSequence;

    .line 52
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mDisabledAlpha:F

    .line 53
    invoke-direct {p0}, syncTextState()V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private syncTextState()V
    .registers 3

    .prologue
    .line 77
    invoke-virtual {p0}, isChecked()Z

    move-result v0

    .line 78
    .local v0, "checked":Z
    if-eqz v0, :cond_10

    iget-object v1, p0, mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 79
    iget-object v1, p0, mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_f
    :goto_f
    return-void

    .line 80
    :cond_10
    if-nez v0, :cond_f

    iget-object v1, p0, mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    .line 81
    iget-object v1, p0, mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 136
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_11

    move-object v0, p1

    .line 137
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 138
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    .end local v0    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :goto_10
    return-void

    .line 141
    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_10
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 149
    iget-object v0, p0, mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 150
    iget-object v1, p0, mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xff

    :goto_11
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    :cond_14
    return-void

    .line 150
    :cond_15
    const/high16 v0, 0x437f0000    # 255.0f

    iget v2, p0, mDisabledAlpha:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_11
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 156
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 125
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-direct {p0, p1}, updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 73
    invoke-direct {p0}, syncTextState()V

    .line 74
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOff"    # Ljava/lang/CharSequence;

    .prologue
    .line 118
    iput-object p1, p0, mTextOff:Ljava/lang/CharSequence;

    .line 119
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "textOn"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    iput-object p1, p0, mTextOn:Ljava/lang/CharSequence;

    .line 101
    return-void
.end method
