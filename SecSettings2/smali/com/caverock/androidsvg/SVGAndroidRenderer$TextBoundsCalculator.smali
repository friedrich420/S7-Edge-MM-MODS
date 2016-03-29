.class Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
.super Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextBoundsCalculator"
.end annotation


# instance fields
.field bbox:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field x:F

.field y:F


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V
    .locals 1
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 1641
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1639
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    .line 1643
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1644
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    .line 1645
    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1650
    instance-of v7, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v7, :cond_2

    move-object v4, p1

    .line 1654
    check-cast v4, Lcom/caverock/androidsvg/SVG$TextPath;

    .line 1655
    .local v4, "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 1656
    .local v3, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v3, :cond_0

    .line 1657
    const-string v7, "TextPath path reference \'%s\' not found"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v8, v6, v5

    # invokes: Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v7, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$4(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1669
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    :goto_0
    return v5

    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v4    # "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    :cond_0
    move-object v2, v3

    .line 1660
    check-cast v2, Lcom/caverock/androidsvg/SVG$Path;

    .line 1661
    .local v2, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 1662
    .local v0, "path":Landroid/graphics/Path;
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v7, :cond_1

    .line 1663
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1664
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 1665
    .local v1, "pathBounds":Landroid/graphics/RectF;
    invoke-virtual {v0, v1, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1666
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v6, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "pathBounds":Landroid/graphics/RectF;
    .end local v2    # "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "tpath":Lcom/caverock/androidsvg/SVG$TextPath;
    :cond_2
    move v5, v6

    .line 1669
    goto :goto_0
.end method

.method public processText(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1675
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    # invokes: Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1679
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    # getter for: Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1680
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1682
    .local v1, "textbounds":Landroid/graphics/RectF;
    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1684
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1688
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v1    # "textbounds":Landroid/graphics/RectF;
    :cond_0
    iget v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    # getter for: Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->x:F

    .line 1689
    return-void
.end method
