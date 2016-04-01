.class final Landroid/widget/GridLayout$Axis;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Axis"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMPLETE:I = 0x2

.field private static final NEW:I = 0x0

.field private static final PENDING:I = 0x1


# instance fields
.field public arcs:[Landroid/widget/GridLayout$Arc;

.field public arcsValid:Z

.field backwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public backwardLinksValid:Z

.field public definedCount:I

.field public deltas:[I

.field forwardLinks:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field public forwardLinksValid:Z

.field groupBounds:Landroid/widget/GridLayout$PackedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation
.end field

.field public groupBoundsValid:Z

.field public hasWeights:Z

.field public hasWeightsValid:Z

.field public final horizontal:Z

.field public leadingMargins:[I

.field public leadingMarginsValid:Z

.field public locations:[I

.field public locationsValid:Z

.field private maxIndex:I

.field orderPreserved:Z

.field private parentMax:Landroid/widget/GridLayout$MutableInt;

.field private parentMin:Landroid/widget/GridLayout$MutableInt;

.field final synthetic this$0:Landroid/widget/GridLayout;

.field public trailingMargins:[I

.field public trailingMarginsValid:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1191
    const-class v0, Landroid/widget/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, $assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Landroid/widget/GridLayout;Z)V
    .registers 5
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 1231
    iput-object p1, p0, this$0:Landroid/widget/GridLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1198
    iput v0, p0, definedCount:I

    .line 1199
    iput v0, p0, maxIndex:I

    .line 1202
    iput-boolean v1, p0, groupBoundsValid:Z

    .line 1205
    iput-boolean v1, p0, forwardLinksValid:Z

    .line 1208
    iput-boolean v1, p0, backwardLinksValid:Z

    .line 1211
    iput-boolean v1, p0, leadingMarginsValid:Z

    .line 1214
    iput-boolean v1, p0, trailingMarginsValid:Z

    .line 1217
    iput-boolean v1, p0, arcsValid:Z

    .line 1220
    iput-boolean v1, p0, locationsValid:Z

    .line 1223
    iput-boolean v1, p0, hasWeightsValid:Z

    .line 1226
    const/4 v0, 0x1

    iput-boolean v0, p0, orderPreserved:Z

    .line 1228
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, parentMin:Landroid/widget/GridLayout$MutableInt;

    .line 1229
    new-instance v0, Landroid/widget/GridLayout$MutableInt;

    const v1, -0x186a0

    invoke-direct {v0, v1}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    iput-object v0, p0, parentMax:Landroid/widget/GridLayout$MutableInt;

    .line 1232
    iput-boolean p2, p0, horizontal:Z

    .line 1233
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout;ZLandroid/widget/GridLayout$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/widget/GridLayout;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 1191
    invoke-direct {p0, p1, p2}, <init>(Landroid/widget/GridLayout;Z)V

    return-void
.end method

.method private addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1462
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    .local p2, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 1463
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Interval;

    aget-object v1, v2, v0

    .line 1464
    .local v1, "key":Landroid/widget/GridLayout$Interval;
    iget-object v2, p2, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$MutableInt;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1466
    .end local v1    # "key":Landroid/widget/GridLayout$Interval;
    :cond_1b
    return-void
.end method

.method private arcsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1536
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    iget-boolean v8, p0, horizontal:Z

    if-eqz v8, :cond_5b

    const-string/jumbo v7, "x"

    .line 1537
    .local v7, "var":Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1538
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 1539
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1540
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    if-eqz v2, :cond_5f

    .line 1541
    const/4 v2, 0x0

    .line 1545
    :goto_20
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v5, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1546
    .local v5, "src":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v1, v8, Landroid/widget/GridLayout$Interval;->max:I

    .line 1547
    .local v1, "dst":I
    iget-object v8, v0, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v6, v8, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1548
    .local v6, "value":I
    if-ge v5, v1, :cond_66

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_57
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1536
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "dst":I
    .end local v2    # "first":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "result":Ljava/lang/StringBuilder;
    .end local v5    # "src":I
    .end local v6    # "value":I
    .end local v7    # "var":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v7, "y"

    goto :goto_7

    .line 1543
    .restart local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .restart local v2    # "first":Z
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "var":Ljava/lang/String;
    :cond_5f
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_20

    .line 1548
    .restart local v1    # "dst":I
    .restart local v5    # "src":I
    .restart local v6    # "value":I
    :cond_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    neg-int v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_57

    .line 1553
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "dst":I
    .end local v5    # "src":I
    .end local v6    # "value":I
    :cond_91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private calculateMaxIndex()I
    .registers 9

    .prologue
    .line 1237
    const/4 v4, -0x1

    .line 1238
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_8
    if-ge v2, v0, :cond_38

    .line 1239
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1240
    .local v1, "c":Landroid/view/View;
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1241
    .local v3, "params":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, horizontal:Z

    if-eqz v7, :cond_35

    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1242
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_1c
    iget-object v5, v6, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1243
    .local v5, "span":Landroid/widget/GridLayout$Interval;
    iget v7, v5, Landroid/widget/GridLayout$Interval;->min:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1244
    iget v7, v5, Landroid/widget/GridLayout$Interval;->max:I

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1245
    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1241
    .end local v5    # "span":Landroid/widget/GridLayout$Interval;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_35
    iget-object v6, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_1c

    .line 1247
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/GridLayout$LayoutParams;
    :cond_38
    const/4 v7, -0x1

    if-ne v4, v7, :cond_3d

    const/high16 v4, -0x80000000

    .end local v4    # "result":I
    :cond_3d
    return v4
.end method

.method private calculateTotalWeight()F
    .registers 9

    .prologue
    .line 1775
    const/4 v5, 0x0

    .line 1776
    .local v5, "totalWeight":F
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_8
    if-ge v2, v0, :cond_2e

    .line 1777
    iget-object v6, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1778
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1b

    .line 1776
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1781
    :cond_1b
    iget-object v6, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v6, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1782
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v6, p0, horizontal:Z

    if-eqz v6, :cond_2b

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1783
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_27
    iget v6, v4, Landroid/widget/GridLayout$Spec;->weight:F

    add-float/2addr v5, v6

    goto :goto_18

    .line 1782
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_2b
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_27

    .line 1785
    .end local v1    # "c":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2e
    return v5
.end method

.method private computeArcs()V
    .registers 1

    .prologue
    .line 1500
    invoke-direct {p0}, getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1501
    invoke-direct {p0}, getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    .line 1502
    return-void
.end method

.method private computeGroupBounds()V
    .registers 11

    .prologue
    .line 1293
    iget-object v0, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    iget-object v9, v0, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v9, [Landroid/widget/GridLayout$Bounds;

    .line 1294
    .local v9, "values":[Landroid/widget/GridLayout$Bounds;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    array-length v0, v9

    if-ge v7, v0, :cond_12

    .line 1295
    aget-object v0, v9, v7

    invoke-virtual {v0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 1294
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1297
    :cond_12
    const/4 v7, 0x0

    iget-object v0, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v6

    .local v6, "N":I
    :goto_19
    if-ge v7, v6, :cond_5a

    .line 1298
    iget-object v0, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1300
    .local v2, "c":Landroid/view/View;
    iget-object v0, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v8

    .line 1301
    .local v8, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v0, p0, horizontal:Z

    if-eqz v0, :cond_50

    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1302
    .local v3, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2d
    iget-object v0, p0, this$0:Landroid/widget/GridLayout;

    iget-boolean v1, p0, horizontal:Z

    invoke-virtual {v0, v2, v1}, Landroid/widget/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v1

    iget v0, v3, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_53

    const/4 v0, 0x0

    :goto_3d
    add-int v5, v1, v0

    .line 1304
    .local v5, "size":I
    iget-object v0, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    invoke-virtual {v0, v7}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Bounds;

    iget-object v1, p0, this$0:Landroid/widget/GridLayout;

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/GridLayout$Bounds;->include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V

    .line 1297
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 1301
    .end local v3    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v5    # "size":I
    :cond_50
    iget-object v3, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2d

    .line 1302
    .restart local v3    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_53
    invoke-virtual {p0}, getDeltas()[I

    move-result-object v0

    aget v0, v0, v7

    goto :goto_3d

    .line 1306
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v8    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_5a
    return-void
.end method

.method private computeHasWeights()Z
    .registers 8

    .prologue
    .line 1690
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_7
    if-ge v2, v0, :cond_32

    .line 1691
    iget-object v5, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1692
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1a

    .line 1690
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1695
    :cond_1a
    iget-object v5, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v5, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v3

    .line 1696
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v5, p0, horizontal:Z

    if-eqz v5, :cond_2f

    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1697
    .local v4, "spec":Landroid/widget/GridLayout$Spec;
    :goto_26
    iget v5, v4, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_17

    .line 1698
    const/4 v5, 0x1

    .line 1701
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v4    # "spec":Landroid/widget/GridLayout$Spec;
    :goto_2e
    return v5

    .line 1696
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_2f
    iget-object v4, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_26

    .line 1701
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_32
    const/4 v5, 0x0

    goto :goto_2e
.end method

.method private computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V
    .registers 9
    .param p2, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1331
    .local p1, "links":Landroid/widget/GridLayout$PackedMap;, "Landroid/widget/GridLayout$PackedMap<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    iget-object v3, p1, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v3, [Landroid/widget/GridLayout$MutableInt;

    .line 1332
    .local v3, "spans":[Landroid/widget/GridLayout$MutableInt;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v5, v3

    if-ge v1, v5, :cond_10

    .line 1333
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/widget/GridLayout$MutableInt;->reset()V

    .line 1332
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1337
    :cond_10
    invoke-virtual {p0}, getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v0, v5, Landroid/widget/GridLayout$PackedMap;->values:[Ljava/lang/Object;

    check-cast v0, [Landroid/widget/GridLayout$Bounds;

    .line 1338
    .local v0, "bounds":[Landroid/widget/GridLayout$Bounds;
    const/4 v1, 0x0

    :goto_19
    array-length v5, v0

    if-ge v1, v5, :cond_37

    .line 1339
    aget-object v5, v0, v1

    invoke-virtual {v5, p2}, Landroid/widget/GridLayout$Bounds;->size(Z)I

    move-result v2

    .line 1340
    .local v2, "size":I
    invoke-virtual {p1, v1}, Landroid/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/GridLayout$MutableInt;

    .line 1342
    .local v4, "valueHolder":Landroid/widget/GridLayout$MutableInt;
    iget v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    if-eqz p2, :cond_35

    .end local v2    # "size":I
    :goto_2c
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1338
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1342
    .restart local v2    # "size":I
    :cond_35
    neg-int v2, v2

    goto :goto_2c

    .line 1344
    .end local v2    # "size":I
    .end local v4    # "valueHolder":Landroid/widget/GridLayout$MutableInt;
    :cond_37
    return-void
.end method

.method private computeLocations([I)V
    .registers 6
    .param p1, "a"    # [I

    .prologue
    .line 1789
    invoke-direct {p0}, hasWeights()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1790
    invoke-direct {p0, p1}, solve([I)Z

    .line 1794
    :goto_9
    iget-boolean v3, p0, orderPreserved:Z

    if-nez v3, :cond_20

    .line 1801
    const/4 v3, 0x0

    aget v1, p1, v3

    .line 1802
    .local v1, "a0":I
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v0, p1

    .local v0, "N":I
    :goto_12
    if-ge v2, v0, :cond_20

    .line 1803
    aget v3, p1, v2

    sub-int/2addr v3, v1

    aput v3, p1, v2

    .line 1802
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1792
    .end local v0    # "N":I
    .end local v1    # "a0":I
    .end local v2    # "i":I
    :cond_1c
    invoke-direct {p0, p1}, solveAndDistributeSpace([I)V

    goto :goto_9

    .line 1806
    :cond_20
    return-void
.end method

.method private computeMargins(Z)V
    .registers 13
    .param p1, "leading"    # Z

    .prologue
    .line 1649
    if-eqz p1, :cond_1e

    iget-object v5, p0, leadingMargins:[I

    .line 1650
    .local v5, "margins":[I
    :goto_4
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v8, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_b
    if-ge v2, v0, :cond_4a

    .line 1651
    iget-object v8, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1652
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_21

    .line 1650
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1649
    .end local v0    # "N":I
    .end local v1    # "c":Landroid/view/View;
    .end local v2    # "i":I
    .end local v5    # "margins":[I
    :cond_1e
    iget-object v5, p0, trailingMargins:[I

    goto :goto_4

    .line 1653
    .restart local v0    # "N":I
    .restart local v1    # "c":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v5    # "margins":[I
    :cond_21
    iget-object v8, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v8, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1654
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v8, p0, horizontal:Z

    if-eqz v8, :cond_44

    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1655
    .local v7, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2d
    iget-object v6, v7, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1656
    .local v6, "span":Landroid/widget/GridLayout$Interval;
    if-eqz p1, :cond_47

    iget v3, v6, Landroid/widget/GridLayout$Interval;->min:I

    .line 1657
    .local v3, "index":I
    :goto_33
    aget v8, v5, v3

    iget-object v9, p0, this$0:Landroid/widget/GridLayout;

    iget-boolean v10, p0, horizontal:Z

    invoke-virtual {v9, v1, v10, p1}, Landroid/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v5, v3

    goto :goto_1b

    .line 1654
    .end local v3    # "index":I
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_44
    iget-object v7, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2d

    .line 1656
    .restart local v6    # "span":Landroid/widget/GridLayout$Interval;
    .restart local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_47
    iget v3, v6, Landroid/widget/GridLayout$Interval;->max:I

    goto :goto_33

    .line 1659
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v6    # "span":Landroid/widget/GridLayout$Interval;
    .end local v7    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_4a
    return-void
.end method

.method private createArcs()[Landroid/widget/GridLayout$Arc;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1469
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1470
    .local v3, "mins":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v2, "maxs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-direct {p0}, getForwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v3, v6}, addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1475
    invoke-direct {p0}, getBackwardLinks()Landroid/widget/GridLayout$PackedMap;

    move-result-object v6

    invoke-direct {p0, v2, v6}, addComponentSizes(Ljava/util/List;Landroid/widget/GridLayout$PackedMap;)V

    .line 1478
    iget-boolean v6, p0, orderPreserved:Z

    if-eqz v6, :cond_36

    .line 1480
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    invoke-virtual {p0}, getCount()I

    move-result v6

    if-ge v1, v6, :cond_36

    .line 1481
    new-instance v6, Landroid/widget/GridLayout$Interval;

    add-int/lit8 v7, v1, 0x1

    invoke-direct {v6, v1, v7}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    new-instance v7, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v7, v8}, Landroid/widget/GridLayout$MutableInt;-><init>(I)V

    invoke-direct {p0, v3, v6, v7}, include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    .line 1480
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1487
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 1488
    .local v0, "N":I
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v8, v0}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, parentMin:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v3, v6, v7, v8}, include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1489
    new-instance v6, Landroid/widget/GridLayout$Interval;

    invoke-direct {v6, v0, v8}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    iget-object v7, p0, parentMax:Landroid/widget/GridLayout$MutableInt;

    invoke-direct {p0, v2, v6, v7, v8}, include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1492
    invoke-direct {p0, v3}, topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v5

    .line 1493
    .local v5, "sMins":[Landroid/widget/GridLayout$Arc;
    invoke-direct {p0, v2}, topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;

    move-result-object v4

    .line 1495
    .local v4, "sMaxs":[Landroid/widget/GridLayout$Arc;
    invoke-static {v5, v4}, Landroid/widget/GridLayout;->append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/widget/GridLayout$Arc;

    return-object v6
.end method

.method private createGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1280
    const-class v7, Landroid/widget/GridLayout$Spec;

    const-class v8, Landroid/widget/GridLayout$Bounds;

    invoke-static {v7, v8}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v1

    .line 1281
    .local v1, "assoc":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Bounds;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_f
    if-ge v4, v0, :cond_36

    .line 1282
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1284
    .local v3, "c":Landroid/view/View;
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v5

    .line 1285
    .local v5, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, horizontal:Z

    if-eqz v7, :cond_33

    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1286
    .local v6, "spec":Landroid/widget/GridLayout$Spec;
    :goto_23
    iget-boolean v7, p0, horizontal:Z

    # invokes: Landroid/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;
    invoke-static {v6, v7}, Landroid/widget/GridLayout$Spec;->access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/GridLayout$Alignment;->getBounds()Landroid/widget/GridLayout$Bounds;

    move-result-object v2

    .line 1287
    .local v2, "bounds":Landroid/widget/GridLayout$Bounds;
    invoke-virtual {v1, v6, v2}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1281
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1285
    .end local v2    # "bounds":Landroid/widget/GridLayout$Bounds;
    .end local v6    # "spec":Landroid/widget/GridLayout$Spec;
    :cond_33
    iget-object v6, v5, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_23

    .line 1289
    .end local v3    # "c":Landroid/view/View;
    .end local v5    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_36
    invoke-virtual {v1}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v7

    return-object v7
.end method

.method private createLinks(Z)Landroid/widget/GridLayout$PackedMap;
    .registers 9
    .param p1, "min"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1321
    const-class v5, Landroid/widget/GridLayout$Interval;

    const-class v6, Landroid/widget/GridLayout$MutableInt;

    invoke-static {v5, v6}, Landroid/widget/GridLayout$Assoc;->of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/widget/GridLayout$Assoc;

    move-result-object v3

    .line 1322
    .local v3, "result":Landroid/widget/GridLayout$Assoc;, "Landroid/widget/GridLayout$Assoc<Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;>;"
    invoke-virtual {p0}, getGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    iget-object v2, v5, Landroid/widget/GridLayout$PackedMap;->keys:[Ljava/lang/Object;

    check-cast v2, [Landroid/widget/GridLayout$Spec;

    .line 1323
    .local v2, "keys":[Landroid/widget/GridLayout$Spec;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_12
    if-ge v1, v0, :cond_2e

    .line 1324
    if-eqz p1, :cond_25

    aget-object v5, v2, v1

    iget-object v4, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    .line 1325
    .local v4, "span":Landroid/widget/GridLayout$Interval;
    :goto_1a
    new-instance v5, Landroid/widget/GridLayout$MutableInt;

    invoke-direct {v5}, Landroid/widget/GridLayout$MutableInt;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/widget/GridLayout$Assoc;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1323
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1324
    .end local v4    # "span":Landroid/widget/GridLayout$Interval;
    :cond_25
    aget-object v5, v2, v1

    iget-object v5, v5, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v5}, Landroid/widget/GridLayout$Interval;->inverse()Landroid/widget/GridLayout$Interval;

    move-result-object v4

    goto :goto_1a

    .line 1327
    :cond_2e
    invoke-virtual {v3}, Landroid/widget/GridLayout$Assoc;->pack()Landroid/widget/GridLayout$PackedMap;

    move-result-object v5

    return-object v5
.end method

.method private getBackwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1358
    iget-object v0, p0, backwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1359
    invoke-direct {p0, v1}, createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1361
    :cond_b
    iget-boolean v0, p0, backwardLinksValid:Z

    if-nez v0, :cond_17

    .line 1362
    iget-object v0, p0, backwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, backwardLinksValid:Z

    .line 1365
    :cond_17
    iget-object v0, p0, backwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getForwardLinks()Landroid/widget/GridLayout$PackedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1347
    iget-object v0, p0, forwardLinks:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_b

    .line 1348
    invoke-direct {p0, v1}, createLinks(Z)Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1350
    :cond_b
    iget-boolean v0, p0, forwardLinksValid:Z

    if-nez v0, :cond_16

    .line 1351
    iget-object v0, p0, forwardLinks:Landroid/widget/GridLayout$PackedMap;

    invoke-direct {p0, v0, v1}, computeLinks(Landroid/widget/GridLayout$PackedMap;Z)V

    .line 1352
    iput-boolean v1, p0, forwardLinksValid:Z

    .line 1354
    :cond_16
    iget-object v0, p0, forwardLinks:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method private getMaxIndex()I
    .registers 3

    .prologue
    .line 1251
    iget v0, p0, maxIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_11

    .line 1252
    const/4 v0, 0x0

    invoke-direct {p0}, calculateMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, maxIndex:I

    .line 1254
    :cond_11
    iget v0, p0, maxIndex:I

    return v0
.end method

.method private getMeasure(II)I
    .registers 4
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1834
    invoke-direct {p0, p1, p2}, setParentConstraints(II)V

    .line 1835
    invoke-virtual {p0}, getLocations()[I

    move-result-object v0

    invoke-direct {p0, v0}, size([I)I

    move-result v0

    return v0
.end method

.method private hasWeights()Z
    .registers 2

    .prologue
    .line 1705
    iget-boolean v0, p0, hasWeightsValid:Z

    if-nez v0, :cond_d

    .line 1706
    invoke-direct {p0}, computeHasWeights()Z

    move-result v0

    iput-boolean v0, p0, hasWeights:Z

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, hasWeightsValid:Z

    .line 1709
    :cond_d
    iget-boolean v0, p0, hasWeights:Z

    return v0
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V
    .registers 5
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V

    .line 1394
    return-void
.end method

.method private include(Ljava/util/List;Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;Z)V
    .registers 9
    .param p2, "key"    # Landroid/widget/GridLayout$Interval;
    .param p3, "size"    # Landroid/widget/GridLayout$MutableInt;
    .param p4, "ignoreIfAlreadyPresent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;",
            "Landroid/widget/GridLayout$Interval;",
            "Landroid/widget/GridLayout$MutableInt;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1376
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-virtual {p2}, Landroid/widget/GridLayout$Interval;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 1390
    :goto_6
    return-void

    .line 1381
    :cond_7
    if-eqz p4, :cond_22

    .line 1382
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout$Arc;

    .line 1383
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v2, v0, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1384
    .local v2, "span":Landroid/widget/GridLayout$Interval;
    invoke-virtual {v2, p2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .line 1389
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "span":Landroid/widget/GridLayout$Interval;
    :cond_22
    new-instance v3, Landroid/widget/GridLayout$Arc;

    invoke-direct {v3, p2, p3}, Landroid/widget/GridLayout$Arc;-><init>(Landroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$MutableInt;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private init([I)V
    .registers 3
    .param p1, "locations"    # [I

    .prologue
    .line 1532
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1533
    return-void
.end method

.method private logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V
    .registers 11
    .param p1, "axisName"    # Ljava/lang/String;
    .param p2, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p3, "culprits0"    # [Z

    .prologue
    .line 1557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    .local v2, "culprits":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    .local v3, "removed":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_b
    array-length v4, p2

    if-ge v1, v4, :cond_21

    .line 1560
    aget-object v0, p2, v1

    .line 1561
    .local v0, "arc":Landroid/widget/GridLayout$Arc;
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_17

    .line 1562
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    :cond_17
    iget-boolean v4, v0, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v4, :cond_1e

    .line 1565
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1559
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1568
    .end local v0    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_21
    iget-object v4, p0, this$0:Landroid/widget/GridLayout;

    iget-object v4, v4, Landroid/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " constraints: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are inconsistent; permanently removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v3}, arcsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1570
    return-void
.end method

.method private relax([ILandroid/widget/GridLayout$Arc;)Z
    .registers 10
    .param p1, "locations"    # [I
    .param p2, "entry"    # Landroid/widget/GridLayout$Arc;

    .prologue
    const/4 v5, 0x0

    .line 1516
    iget-boolean v6, p2, Landroid/widget/GridLayout$Arc;->valid:Z

    if-nez v6, :cond_6

    .line 1528
    :cond_5
    :goto_5
    return v5

    .line 1519
    :cond_6
    iget-object v1, p2, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    .line 1520
    .local v1, "span":Landroid/widget/GridLayout$Interval;
    iget v2, v1, Landroid/widget/GridLayout$Interval;->min:I

    .line 1521
    .local v2, "u":I
    iget v3, v1, Landroid/widget/GridLayout$Interval;->max:I

    .line 1522
    .local v3, "v":I
    iget-object v6, p2, Landroid/widget/GridLayout$Arc;->value:Landroid/widget/GridLayout$MutableInt;

    iget v4, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1523
    .local v4, "value":I
    aget v6, p1, v2

    add-int v0, v6, v4

    .line 1524
    .local v0, "candidate":I
    aget v6, p1, v3

    if-le v0, v6, :cond_5

    .line 1525
    aput v0, p1, v3

    .line 1526
    const/4 v5, 0x1

    goto :goto_5
.end method

.method private setParentConstraints(II)V
    .registers 5
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1828
    iget-object v0, p0, parentMin:Landroid/widget/GridLayout$MutableInt;

    iput p1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1829
    iget-object v0, p0, parentMax:Landroid/widget/GridLayout$MutableInt;

    neg-int v1, p2

    iput v1, v0, Landroid/widget/GridLayout$MutableInt;->value:I

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, locationsValid:Z

    .line 1831
    return-void
.end method

.method private shareOutDelta(IF)V
    .registers 12
    .param p1, "totalDelta"    # I
    .param p2, "totalWeight"    # F

    .prologue
    .line 1720
    iget-object v7, p0, deltas:[I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1721
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_d
    if-ge v3, v0, :cond_44

    .line 1722
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1723
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_20

    .line 1721
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1726
    :cond_20
    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7, v1}, Landroid/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v4

    .line 1727
    .local v4, "lp":Landroid/widget/GridLayout$LayoutParams;
    iget-boolean v7, p0, horizontal:Z

    if-eqz v7, :cond_41

    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1728
    .local v5, "spec":Landroid/widget/GridLayout$Spec;
    :goto_2c
    iget v6, v5, Landroid/widget/GridLayout$Spec;->weight:F

    .line 1729
    .local v6, "weight":F
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1d

    .line 1730
    int-to-float v7, p1

    mul-float/2addr v7, v6

    div-float/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1731
    .local v2, "delta":I
    iget-object v7, p0, deltas:[I

    aput v2, v7, v3

    .line 1734
    sub-int/2addr p1, v2

    .line 1735
    sub-float/2addr p2, v6

    goto :goto_1d

    .line 1727
    .end local v2    # "delta":I
    .end local v5    # "spec":Landroid/widget/GridLayout$Spec;
    .end local v6    # "weight":F
    :cond_41
    iget-object v5, v4, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    goto :goto_2c

    .line 1738
    .end local v1    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_44
    return-void
.end method

.method private size([I)I
    .registers 3
    .param p1, "locations"    # [I

    .prologue
    .line 1824
    invoke-virtual {p0}, getCount()I

    move-result v0

    aget v0, p1, v0

    return v0
.end method

.method private solve([I)Z
    .registers 3
    .param p1, "a"    # [I

    .prologue
    .line 1686
    invoke-virtual {p0}, getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    invoke-direct {p0, v0, p1}, solve([Landroid/widget/GridLayout$Arc;[I)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[I)Z
    .registers 4
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I

    .prologue
    .line 1593
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v0

    return v0
.end method

.method private solve([Landroid/widget/GridLayout$Arc;[IZ)Z
    .registers 16
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;
    .param p2, "locations"    # [I
    .param p3, "modifyOnError"    # Z

    .prologue
    .line 1597
    iget-boolean v10, p0, horizontal:Z

    if-eqz v10, :cond_26

    const-string v2, "horizontal"

    .line 1598
    .local v2, "axisName":Ljava/lang/String;
    :goto_6
    invoke-virtual {p0}, getCount()I

    move-result v10

    add-int/lit8 v0, v10, 0x1

    .line 1599
    .local v0, "N":I
    const/4 v8, 0x0

    .line 1601
    .local v8, "originalCulprits":[Z
    const/4 v9, 0x0

    .local v9, "p":I
    :goto_e
    array-length v10, p1

    if-ge v9, v10, :cond_75

    .line 1602
    invoke-direct {p0, p2}, init([I)V

    .line 1605
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v0, :cond_36

    .line 1606
    const/4 v3, 0x0

    .line 1607
    .local v3, "changed":Z
    const/4 v6, 0x0

    .local v6, "j":I
    array-length v7, p1

    .local v7, "length":I
    :goto_1a
    if-ge v6, v7, :cond_2a

    .line 1608
    aget-object v10, p1, v6

    invoke-direct {p0, p2, v10}, relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v10

    or-int/2addr v3, v10

    .line 1607
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 1597
    .end local v0    # "N":I
    .end local v2    # "axisName":Ljava/lang/String;
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    .end local v8    # "originalCulprits":[Z
    .end local v9    # "p":I
    :cond_26
    const-string/jumbo v2, "vertical"

    goto :goto_6

    .line 1610
    .restart local v0    # "N":I
    .restart local v2    # "axisName":Ljava/lang/String;
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    .restart local v8    # "originalCulprits":[Z
    .restart local v9    # "p":I
    :cond_2a
    if-nez v3, :cond_33

    .line 1611
    if-eqz v8, :cond_31

    .line 1612
    invoke-direct {p0, v2, p1, v8}, logError(Ljava/lang/String;[Landroid/widget/GridLayout$Arc;[Z)V

    .line 1614
    :cond_31
    const/4 v10, 0x1

    .line 1645
    .end local v3    # "changed":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "length":I
    :goto_32
    return v10

    .line 1605
    .restart local v3    # "changed":Z
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "length":I
    :cond_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1618
    .end local v3    # "changed":Z
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_36
    if-nez p3, :cond_3a

    .line 1619
    const/4 v10, 0x0

    goto :goto_32

    .line 1622
    :cond_3a
    array-length v10, p1

    new-array v4, v10, [Z

    .line 1623
    .local v4, "culprits":[Z
    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v0, :cond_55

    .line 1624
    const/4 v6, 0x0

    .restart local v6    # "j":I
    array-length v7, p1

    .restart local v7    # "length":I
    :goto_42
    if-ge v6, v7, :cond_52

    .line 1625
    aget-boolean v10, v4, v6

    aget-object v11, p1, v6

    invoke-direct {p0, p2, v11}, relax([ILandroid/widget/GridLayout$Arc;)Z

    move-result v11

    or-int/2addr v10, v11

    aput-boolean v10, v4, v6

    .line 1624
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 1623
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1629
    .end local v6    # "j":I
    .end local v7    # "length":I
    :cond_55
    if-nez v9, :cond_58

    .line 1630
    move-object v8, v4

    .line 1633
    :cond_58
    const/4 v5, 0x0

    :goto_59
    array-length v10, p1

    if-ge v5, v10, :cond_72

    .line 1634
    aget-boolean v10, v4, v5

    if-eqz v10, :cond_6c

    .line 1635
    aget-object v1, p1, v5

    .line 1637
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v10, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v10, v10, Landroid/widget/GridLayout$Interval;->min:I

    iget-object v11, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v11, v11, Landroid/widget/GridLayout$Interval;->max:I

    if-ge v10, v11, :cond_6f

    .line 1633
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 1640
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_6f
    const/4 v10, 0x0

    iput-boolean v10, v1, Landroid/widget/GridLayout$Arc;->valid:Z

    .line 1601
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_72
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 1645
    .end local v4    # "culprits":[Z
    .end local v5    # "i":I
    :cond_75
    const/4 v10, 0x1

    goto :goto_32
.end method

.method private solveAndDistributeSpace([I)V
    .registers 11
    .param p1, "a"    # [I

    .prologue
    const/4 v8, 0x0

    .line 1741
    invoke-virtual {p0}, getDeltas()[I

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1742
    invoke-direct {p0, p1}, solve([I)Z

    .line 1743
    iget-object v6, p0, parentMin:Landroid/widget/GridLayout$MutableInt;

    iget v6, v6, Landroid/widget/GridLayout$MutableInt;->value:I

    iget-object v7, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v7}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x1

    .line 1744
    .local v1, "deltaMax":I
    const/4 v6, 0x2

    if-ge v1, v6, :cond_1c

    .line 1772
    :cond_1b
    :goto_1b
    return-void

    .line 1747
    :cond_1c
    const/4 v2, 0x0

    .line 1749
    .local v2, "deltaMin":I
    invoke-direct {p0}, calculateTotalWeight()F

    move-result v3

    .line 1751
    .local v3, "totalWeight":F
    const/4 v4, -0x1

    .line 1752
    .local v4, "validDelta":I
    const/4 v5, 0x1

    .line 1754
    .local v5, "validSolution":Z
    :goto_23
    if-ge v2, v1, :cond_3f

    .line 1755
    add-int v6, v2, v1

    div-int/lit8 v0, v6, 0x2

    .line 1756
    .local v0, "delta":I
    invoke-virtual {p0}, invalidateValues()V

    .line 1757
    invoke-direct {p0, v0, v3}, shareOutDelta(IF)V

    .line 1758
    invoke-virtual {p0}, getArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v6

    invoke-direct {p0, v6, p1, v8}, solve([Landroid/widget/GridLayout$Arc;[IZ)Z

    move-result v5

    .line 1759
    if-eqz v5, :cond_3d

    .line 1760
    move v4, v0

    .line 1761
    add-int/lit8 v2, v0, 0x1

    goto :goto_23

    .line 1763
    :cond_3d
    move v1, v0

    goto :goto_23

    .line 1766
    .end local v0    # "delta":I
    :cond_3f
    if-lez v4, :cond_1b

    if-nez v5, :cond_1b

    .line 1768
    invoke-virtual {p0}, invalidateValues()V

    .line 1769
    invoke-direct {p0, v4, v3}, shareOutDelta(IF)V

    .line 1770
    invoke-direct {p0, p1}, solve([I)Z

    goto :goto_1b
.end method

.method private topologicalSort(Ljava/util/List;)[Landroid/widget/GridLayout$Arc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridLayout$Arc;",
            ">;)[",
            "Landroid/widget/GridLayout$Arc;"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, "arcs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/GridLayout$Arc;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/widget/GridLayout$Arc;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/GridLayout$Arc;

    invoke-direct {p0, v0}, topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method

.method private topologicalSort([Landroid/widget/GridLayout$Arc;)[Landroid/widget/GridLayout$Arc;
    .registers 3
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .prologue
    .line 1419
    new-instance v0, Landroid/widget/GridLayout$Axis$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/GridLayout$Axis$1;-><init>(Landroid/widget/GridLayout$Axis;[Landroid/widget/GridLayout$Arc;)V

    invoke-virtual {v0}, Landroid/widget/GridLayout$Axis$1;->sort()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getArcs()[Landroid/widget/GridLayout$Arc;
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, arcs:[Landroid/widget/GridLayout$Arc;

    if-nez v0, :cond_a

    .line 1506
    invoke-direct {p0}, createArcs()[Landroid/widget/GridLayout$Arc;

    move-result-object v0

    iput-object v0, p0, arcs:[Landroid/widget/GridLayout$Arc;

    .line 1508
    :cond_a
    iget-boolean v0, p0, arcsValid:Z

    if-nez v0, :cond_14

    .line 1509
    invoke-direct {p0}, computeArcs()V

    .line 1510
    const/4 v0, 0x1

    iput-boolean v0, p0, arcsValid:Z

    .line 1512
    :cond_14
    iget-object v0, p0, arcs:[Landroid/widget/GridLayout$Arc;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1258
    iget v0, p0, definedCount:I

    invoke-direct {p0}, getMaxIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getDeltas()[I
    .registers 2

    .prologue
    .line 1713
    iget-object v0, p0, deltas:[I

    if-nez v0, :cond_e

    .line 1714
    iget-object v0, p0, this$0:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, deltas:[I

    .line 1716
    :cond_e
    iget-object v0, p0, deltas:[I

    return-object v0
.end method

.method public getGroupBounds()Landroid/widget/GridLayout$PackedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/GridLayout$PackedMap",
            "<",
            "Landroid/widget/GridLayout$Spec;",
            "Landroid/widget/GridLayout$Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1309
    iget-object v0, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    if-nez v0, :cond_a

    .line 1310
    invoke-direct {p0}, createGroupBounds()Landroid/widget/GridLayout$PackedMap;

    move-result-object v0

    iput-object v0, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1312
    :cond_a
    iget-boolean v0, p0, groupBoundsValid:Z

    if-nez v0, :cond_14

    .line 1313
    invoke-direct {p0}, computeGroupBounds()V

    .line 1314
    const/4 v0, 0x1

    iput-boolean v0, p0, groupBoundsValid:Z

    .line 1316
    :cond_14
    iget-object v0, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    return-object v0
.end method

.method public getLeadingMargins()[I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1664
    iget-object v0, p0, leadingMargins:[I

    if-nez v0, :cond_f

    .line 1665
    invoke-virtual {p0}, getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, leadingMargins:[I

    .line 1667
    :cond_f
    iget-boolean v0, p0, leadingMarginsValid:Z

    if-nez v0, :cond_18

    .line 1668
    invoke-direct {p0, v1}, computeMargins(Z)V

    .line 1669
    iput-boolean v1, p0, leadingMarginsValid:Z

    .line 1671
    :cond_18
    iget-object v0, p0, leadingMargins:[I

    return-object v0
.end method

.method public getLocations()[I
    .registers 3

    .prologue
    .line 1809
    iget-object v1, p0, locations:[I

    if-nez v1, :cond_e

    .line 1810
    invoke-virtual {p0}, getCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1811
    .local v0, "N":I
    new-array v1, v0, [I

    iput-object v1, p0, locations:[I

    .line 1813
    .end local v0    # "N":I
    :cond_e
    iget-boolean v1, p0, locationsValid:Z

    if-nez v1, :cond_1a

    .line 1814
    iget-object v1, p0, locations:[I

    invoke-direct {p0, v1}, computeLocations([I)V

    .line 1815
    const/4 v1, 0x1

    iput-boolean v1, p0, locationsValid:Z

    .line 1817
    :cond_1a
    iget-object v1, p0, locations:[I

    return-object v1
.end method

.method public getMeasure(I)I
    .registers 6
    .param p1, "measureSpec"    # I

    .prologue
    const/4 v2, 0x0

    .line 1839
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1840
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1841
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_28

    .line 1852
    sget-boolean v3, $assertionsDisabled:Z

    if-nez v3, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1843
    :sswitch_16
    const v3, 0x186a0

    invoke-direct {p0, v2, v3}, getMeasure(II)I

    move-result v2

    .line 1853
    :cond_1d
    :goto_1d
    return v2

    .line 1846
    :sswitch_1e
    invoke-direct {p0, v1, v1}, getMeasure(II)I

    move-result v2

    goto :goto_1d

    .line 1849
    :sswitch_23
    invoke-direct {p0, v2, v1}, getMeasure(II)I

    move-result v2

    goto :goto_1d

    .line 1841
    :sswitch_data_28
    .sparse-switch
        -0x80000000 -> :sswitch_23
        0x0 -> :sswitch_16
        0x40000000 -> :sswitch_1e
    .end sparse-switch
.end method

.method public getTrailingMargins()[I
    .registers 2

    .prologue
    .line 1675
    iget-object v0, p0, trailingMargins:[I

    if-nez v0, :cond_e

    .line 1676
    invoke-virtual {p0}, getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, trailingMargins:[I

    .line 1678
    :cond_e
    iget-boolean v0, p0, trailingMarginsValid:Z

    if-nez v0, :cond_19

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, v0}, computeMargins(Z)V

    .line 1680
    const/4 v0, 0x1

    iput-boolean v0, p0, trailingMarginsValid:Z

    .line 1682
    :cond_19
    iget-object v0, p0, trailingMargins:[I

    return-object v0
.end method

.method groupArcsByFirstVertex([Landroid/widget/GridLayout$Arc;)[[Landroid/widget/GridLayout$Arc;
    .registers 13
    .param p1, "arcs"    # [Landroid/widget/GridLayout$Arc;

    .prologue
    .line 1399
    invoke-virtual {p0}, getCount()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    .line 1400
    .local v0, "N":I
    new-array v6, v0, [[Landroid/widget/GridLayout$Arc;

    .line 1401
    .local v6, "result":[[Landroid/widget/GridLayout$Arc;
    new-array v7, v0, [I

    .line 1402
    .local v7, "sizes":[I
    move-object v2, p1

    .local v2, "arr$":[Landroid/widget/GridLayout$Arc;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v5, :cond_1e

    aget-object v1, v2, v4

    .line 1403
    .local v1, "arc":Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v8, v8, Landroid/widget/GridLayout$Interval;->min:I

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 1402
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1405
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v8, v7

    if-ge v3, v8, :cond_2b

    .line 1406
    aget v8, v7, v3

    new-array v8, v8, [Landroid/widget/GridLayout$Arc;

    aput-object v8, v6, v3

    .line 1405
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1409
    :cond_2b
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1410
    move-object v2, p1

    array-length v5, v2

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v5, :cond_47

    aget-object v1, v2, v4

    .line 1411
    .restart local v1    # "arc":Landroid/widget/GridLayout$Arc;
    iget-object v8, v1, Landroid/widget/GridLayout$Arc;->span:Landroid/widget/GridLayout$Interval;

    iget v3, v8, Landroid/widget/GridLayout$Interval;->min:I

    .line 1412
    aget-object v8, v6, v3

    aget v9, v7, v3

    add-int/lit8 v10, v9, 0x1

    aput v10, v7, v3

    aput-object v1, v8, v9

    .line 1410
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 1415
    .end local v1    # "arc":Landroid/widget/GridLayout$Arc;
    :cond_47
    return-object v6
.end method

.method public invalidateStructure()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1864
    const/high16 v0, -0x80000000

    iput v0, p0, maxIndex:I

    .line 1866
    iput-object v1, p0, groupBounds:Landroid/widget/GridLayout$PackedMap;

    .line 1867
    iput-object v1, p0, forwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1868
    iput-object v1, p0, backwardLinks:Landroid/widget/GridLayout$PackedMap;

    .line 1870
    iput-object v1, p0, leadingMargins:[I

    .line 1871
    iput-object v1, p0, trailingMargins:[I

    .line 1872
    iput-object v1, p0, arcs:[Landroid/widget/GridLayout$Arc;

    .line 1874
    iput-object v1, p0, locations:[I

    .line 1876
    iput-object v1, p0, deltas:[I

    .line 1877
    const/4 v0, 0x0

    iput-boolean v0, p0, hasWeightsValid:Z

    .line 1879
    invoke-virtual {p0}, invalidateValues()V

    .line 1880
    return-void
.end method

.method public invalidateValues()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1883
    iput-boolean v0, p0, groupBoundsValid:Z

    .line 1884
    iput-boolean v0, p0, forwardLinksValid:Z

    .line 1885
    iput-boolean v0, p0, backwardLinksValid:Z

    .line 1887
    iput-boolean v0, p0, leadingMarginsValid:Z

    .line 1888
    iput-boolean v0, p0, trailingMarginsValid:Z

    .line 1889
    iput-boolean v0, p0, arcsValid:Z

    .line 1891
    iput-boolean v0, p0, locationsValid:Z

    .line 1892
    return-void
.end method

.method public isOrderPreserved()Z
    .registers 2

    .prologue
    .line 1271
    iget-boolean v0, p0, orderPreserved:Z

    return v0
.end method

.method public layout(I)V
    .registers 2
    .param p1, "size"    # I

    .prologue
    .line 1859
    invoke-direct {p0, p1, p1}, setParentConstraints(II)V

    .line 1860
    invoke-virtual {p0}, getLocations()[I

    .line 1861
    return-void
.end method

.method public setCount(I)V
    .registers 4
    .param p1, "count"    # I

    .prologue
    .line 1262
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_2c

    invoke-direct {p0}, getMaxIndex()I

    move-result v0

    if-ge p1, v0, :cond_2c

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, horizontal:Z

    if-eqz v0, :cond_2f

    const-string v0, "column"

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Count must be greater than or equal to the maximum of all grid indices "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(and spans) defined in the LayoutParams of each child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/widget/GridLayout;->access$200(Ljava/lang/String;)V

    .line 1267
    :cond_2c
    iput p1, p0, definedCount:I

    .line 1268
    return-void

    .line 1263
    :cond_2f
    const-string/jumbo v0, "row"

    goto :goto_15
.end method

.method public setOrderPreserved(Z)V
    .registers 2
    .param p1, "orderPreserved"    # Z

    .prologue
    .line 1275
    iput-boolean p1, p0, orderPreserved:Z

    .line 1276
    invoke-virtual {p0}, invalidateStructure()V

    .line 1277
    return-void
.end method
