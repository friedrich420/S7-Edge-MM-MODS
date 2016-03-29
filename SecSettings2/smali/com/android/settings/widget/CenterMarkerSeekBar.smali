.class public Lcom/android/settings/widget/CenterMarkerSeekBar;
.super Landroid/widget/SeekBar;
.source "CenterMarkerSeekBar.java"


# instance fields
.field private mMarkerPaint:Landroid/graphics/Paint;

.field private mRectMarker:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/widget/CenterMarkerSeekBar;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 62
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/widget/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v4}, Lcom/android/settings/widget/CenterMarkerSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/CenterMarkerSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 39
    const v3, 0x7f0c03b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 40
    .local v1, "marker_width":I
    const v3, 0x7f0c03b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 41
    .local v0, "marker_height":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    .line 42
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v3, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v3, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    const v4, 0x7f0a011e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mPaddingTop:I

    add-int v0, v1, v2

    .line 53
    .local v0, "translate_dx":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    iget-object v1, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings/widget/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 50
    .end local v0    # "translate_dx":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
