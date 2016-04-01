.class final Landroid/widget/GridLayout$7;
.super Landroid/widget/GridLayout$Alignment;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2895
    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSize"    # I
    .param p3, "mode"    # I

    .prologue
    .line 2903
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 2904
    const/4 v0, 0x0

    .line 2907
    :cond_9
    :goto_9
    return v0

    .line 2906
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2907
    .local v0, "baseline":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/high16 v0, -0x80000000

    goto :goto_9
.end method

.method public getBounds()Landroid/widget/GridLayout$Bounds;
    .registers 2

    .prologue
    .line 2912
    new-instance v0, Landroid/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroid/widget/GridLayout$7$1;-><init>(Landroid/widget/GridLayout$7;)V

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cellDelta"    # I

    .prologue
    .line 2898
    const/4 v0, 0x0

    return v0
.end method
