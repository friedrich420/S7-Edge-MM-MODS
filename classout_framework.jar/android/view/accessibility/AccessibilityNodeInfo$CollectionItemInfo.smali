.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3967
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IIIIZZ)V
    .registers 7
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 4039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4040
    iput p1, p0, mRowIndex:I

    .line 4041
    iput p2, p0, mRowSpan:I

    .line 4042
    iput p3, p0, mColumnIndex:I

    .line 4043
    iput p4, p0, mColumnSpan:I

    .line 4044
    iput-boolean p5, p0, mHeading:Z

    .line 4045
    iput-boolean p6, p0, mSelected:Z

    .line 4046
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 4112
    iput v0, p0, mColumnIndex:I

    .line 4113
    iput v0, p0, mColumnSpan:I

    .line 4114
    iput v0, p0, mRowIndex:I

    .line 4115
    iput v0, p0, mRowSpan:I

    .line 4116
    iput-boolean v0, p0, mHeading:Z

    .line 4117
    iput-boolean v0, p0, mSelected:Z

    .line 4118
    return-void
.end method

.method public static obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 11
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z

    .prologue
    .line 3992
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 14
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z

    .prologue
    .line 4007
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4008
    .local v7, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    if-nez v7, :cond_16

    .line 4009
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, <init>(IIIIZZ)V

    .line 4019
    :goto_15
    return-object v0

    .line 4013
    :cond_16
    iput p0, v7, mRowIndex:I

    .line 4014
    iput p1, v7, mRowSpan:I

    .line 4015
    iput p2, v7, mColumnIndex:I

    .line 4016
    iput p3, v7, mColumnSpan:I

    .line 4017
    iput-boolean p4, v7, mHeading:Z

    .line 4018
    iput-boolean p5, v7, mSelected:Z

    move-object v0, v7

    .line 4019
    goto :goto_15
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 7
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 3977
    iget v0, p0, mRowIndex:I

    iget v1, p0, mRowSpan:I

    iget v2, p0, mColumnIndex:I

    iget v3, p0, mColumnSpan:I

    iget-boolean v4, p0, mHeading:Z

    iget-boolean v5, p0, mSelected:Z

    invoke-static/range {v0 .. v5}, obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColumnIndex()I
    .registers 2

    .prologue
    .line 4054
    iget v0, p0, mColumnIndex:I

    return v0
.end method

.method public getColumnSpan()I
    .registers 2

    .prologue
    .line 4072
    iget v0, p0, mColumnSpan:I

    return v0
.end method

.method public getRowIndex()I
    .registers 2

    .prologue
    .line 4063
    iget v0, p0, mRowIndex:I

    return v0
.end method

.method public getRowSpan()I
    .registers 2

    .prologue
    .line 4081
    iget v0, p0, mRowSpan:I

    return v0
.end method

.method public isHeading()Z
    .registers 2

    .prologue
    .line 4091
    iget-boolean v0, p0, mHeading:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 4100
    iget-boolean v0, p0, mSelected:Z

    return v0
.end method

.method recycle()V
    .registers 2

    .prologue
    .line 4107
    invoke-direct {p0}, clear()V

    .line 4108
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 4109
    return-void
.end method
