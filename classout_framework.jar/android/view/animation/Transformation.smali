.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mClipRect:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {p0}, clear()V

    .line 60
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_1b

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    .line 73
    :goto_b
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasClipRect:Z

    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mAlpha:F

    .line 76
    const/4 v0, 0x3

    iput v0, p0, mTransformationType:I

    .line 77
    return-void

    .line 71
    :cond_1b
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_b
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 123
    iget v1, p0, mAlpha:F

    invoke-virtual {p1}, getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, mAlpha:F

    .line 124
    iget-object v1, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 125
    iget-boolean v1, p1, mHasClipRect:Z

    if-eqz v1, :cond_3d

    .line 126
    invoke-virtual {p1}, getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 127
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 128
    iget-object v1, p0, mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, setClipRect(IIII)V

    .line 134
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3d
    :goto_3d
    return-void

    .line 131
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3e
    invoke-virtual {p0, v0}, setClipRect(Landroid/graphics/Rect;)V

    goto :goto_3d
.end method

.method public getAlpha()F
    .registers 2

    .prologue
    .line 208
    iget v0, p0, mAlpha:F

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, mTransformationType:I

    return v0
.end method

.method public hasClipRect()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, mHasClipRect:Z

    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 142
    iget v1, p0, mAlpha:F

    invoke-virtual {p1}, getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, mAlpha:F

    .line 143
    iget-object v1, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 144
    iget-boolean v1, p1, mHasClipRect:Z

    if-eqz v1, :cond_3d

    .line 145
    invoke-virtual {p1}, getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 146
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, mHasClipRect:Z

    if-eqz v1, :cond_3e

    .line 147
    iget-object v1, p0, mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, setClipRect(IIII)V

    .line 153
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3d
    :goto_3d
    return-void

    .line 150
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_3e
    invoke-virtual {p0, v0}, setClipRect(Landroid/graphics/Rect;)V

    goto :goto_3d
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 242
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 243
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 245
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 246
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .registers 4
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 106
    invoke-virtual {p1}, getAlpha()F

    move-result v0

    iput v0, p0, mAlpha:F

    .line 107
    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 108
    iget-boolean v0, p1, mHasClipRect:Z

    if-eqz v0, :cond_21

    .line 109
    invoke-virtual {p1}, getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, setClipRect(Landroid/graphics/Rect;)V

    .line 114
    :goto_1a
    invoke-virtual {p1}, getTransformationType()I

    move-result v0

    iput v0, p0, mTransformationType:I

    .line 115
    return-void

    .line 111
    :cond_21
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasClipRect:Z

    .line 112
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1a
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"    # F

    .prologue
    .line 168
    iput p1, p0, mAlpha:F

    .line 169
    return-void
.end method

.method public setClipRect(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 184
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasClipRect:Z

    .line 186
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 176
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, setClipRect(IIII)V

    .line 177
    return-void
.end method

.method public setTransformationType(I)V
    .registers 2
    .param p1, "transformationType"    # I

    .prologue
    .line 97
    iput p1, p0, mTransformationType:I

    .line 98
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 232
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 233
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 234
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
