.class Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowBuilder"
.end annotation


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;


# direct methods
.method public constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;

    .line 115
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 116
    iput-object p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 117
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    .line 129
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 131
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$000()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 138
    .local v3, "imgW":I
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 139
    .local v2, "imgH":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 140
    .local v0, "borderRect":Landroid/graphics/Rect;
    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$000()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop;->access$000()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 141
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 142
    .local v1, "imagePath":Landroid/graphics/Path;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 143
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 146
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 150
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 153
    .end local v0    # "borderRect":Landroid/graphics/Rect;
    .end local v1    # "imagePath":Landroid/graphics/Path;
    .end local v2    # "imgH":I
    .end local v3    # "imgW":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    .line 120
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 122
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 123
    .local v0, "height":I
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 124
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 126
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    return-void
.end method
