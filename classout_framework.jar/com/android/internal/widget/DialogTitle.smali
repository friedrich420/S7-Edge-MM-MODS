.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 38
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 39
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 59
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v1

    .line 61
    .local v1, "mIsDeviceDefaultTheme":Z
    if-eqz v1, :cond_1c

    .line 62
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, textSize:I

    .line 70
    :goto_1b
    return-void

    .line 64
    :cond_1c
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->TextAppearance:[I

    const v5, 0x1010041

    const v6, 0x1030044

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, textSize:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1b
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 76
    invoke-virtual {p0}, getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 77
    .local v3, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_55

    .line 78
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    .line 79
    .local v4, "lineCount":I
    if-lez v4, :cond_55

    .line 80
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 81
    .local v2, "ellipsisCount":I
    if-lez v2, :cond_55

    .line 82
    invoke-virtual {p0, v8}, setSingleLine(Z)V

    .line 83
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, setMaxLines(I)V

    .line 85
    iget v6, p0, textSize:I

    if-eqz v6, :cond_52

    .line 87
    const v5, 0x3f99999a    # 1.2f

    .line 88
    .local v5, "maxScale":F
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v1, v6, Landroid/content/res/Configuration;->fontScale:F

    .line 89
    .local v1, "currentFontScale":F
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/util/GeneralUtil;->isDeviceDefault(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_56

    cmpl-float v6, v1, v5

    if-lez v6, :cond_56

    .line 90
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105013a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float v0, v6, v1

    .line 91
    .local v0, "baseTextSize":F
    mul-float v6, v0, v5

    invoke-virtual {p0, v8, v6}, setTextSize(IF)V

    .line 97
    .end local v0    # "baseTextSize":F
    .end local v1    # "currentFontScale":F
    .end local v5    # "maxScale":F
    :cond_52
    :goto_52
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 101
    .end local v2    # "ellipsisCount":I
    .end local v4    # "lineCount":I
    :cond_55
    return-void

    .line 93
    .restart local v1    # "currentFontScale":F
    .restart local v2    # "ellipsisCount":I
    .restart local v4    # "lineCount":I
    .restart local v5    # "maxScale":F
    :cond_56
    iget v6, p0, textSize:I

    int-to-float v6, v6

    invoke-virtual {p0, v8, v6}, setTextSize(IF)V

    goto :goto_52
.end method
