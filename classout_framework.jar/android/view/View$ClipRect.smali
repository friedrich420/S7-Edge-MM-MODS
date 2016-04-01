.class public Landroid/view/View$ClipRect;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipRect"
.end annotation


# instance fields
.field mClipRect:Landroid/graphics/Rect;

.field mCornerRadius:F

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 3862
    iput-object p1, p0, this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3860
    const/4 v0, 0x0

    iput v0, p0, mCornerRadius:F

    .line 3864
    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .registers 2

    .prologue
    .line 3910
    iget v0, p0, mCornerRadius:F

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 3874
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setCornerRadius(F)V
    .registers 2
    .param p1, "radius"    # F

    .prologue
    .line 3923
    iput p1, p0, mCornerRadius:F

    .line 3924
    return-void
.end method

.method public setRectBound(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3891
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 3892
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mClipRect:Landroid/graphics/Rect;

    .line 3894
    :cond_b
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 3895
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 3896
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 3897
    iget-object v0, p0, mClipRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 3898
    return-void
.end method
