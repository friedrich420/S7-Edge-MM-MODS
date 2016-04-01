.class public Lcom/android/internal/policy/multiwindow/EdgeInspector;
.super Ljava/lang/Object;
.source "EdgeInspector.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mFilter:I

.field private mIsCandidate:Z

.field private mOnlyConerResizable:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "onlyCornerResizable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, mDir:I

    .line 27
    const/16 v0, 0xf

    iput v0, p0, mFilter:I

    .line 30
    iput-boolean v1, p0, mIsCandidate:Z

    .line 31
    iput-boolean v1, p0, mOnlyConerResizable:Z

    .line 34
    invoke-virtual {p0, p1, p2}, set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 35
    iput-boolean p3, p0, mOnlyConerResizable:Z

    .line 36
    return-void
.end method


# virtual methods
.method public check(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    iget-object v0, p0, mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    .line 113
    :cond_9
    :goto_9
    return-void

    .line 78
    :cond_a
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_78

    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_78

    .line 79
    iget v0, p0, mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, mDir:I

    .line 84
    :cond_21
    :goto_21
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_90

    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    if-le v0, p2, :cond_90

    .line 85
    iget v0, p0, mDir:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, mDir:I

    .line 90
    :cond_38
    :goto_38
    invoke-virtual {p0}, isCorner()Z

    move-result v0

    if-nez v0, :cond_60

    .line 91
    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_a8

    .line 92
    iput-boolean v2, p0, mIsCandidate:Z

    .line 96
    :cond_4d
    :goto_4d
    iget-boolean v0, p0, mIsCandidate:Z

    if-nez v0, :cond_60

    .line 97
    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p2, :cond_b8

    .line 98
    iput-boolean v2, p0, mIsCandidate:Z

    .line 105
    :cond_60
    :goto_60
    iget-boolean v0, p0, mOnlyConerResizable:Z

    if-nez v0, :cond_70

    .line 106
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, mDir:I

    .line 109
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, mDir:I

    .line 112
    :cond_70
    iget v0, p0, mDir:I

    iget v1, p0, mFilter:I

    and-int/2addr v0, v1

    iput v0, p0, mDir:I

    goto :goto_9

    .line 80
    :cond_78
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_21

    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_21

    .line 81
    iget v0, p0, mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, mDir:I

    goto :goto_21

    .line 86
    :cond_90
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_38

    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_38

    .line 87
    iget v0, p0, mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, mDir:I

    goto :goto_38

    .line 93
    :cond_a8
    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_4d

    .line 94
    iput-boolean v2, p0, mIsCandidate:Z

    goto :goto_4d

    .line 99
    :cond_b8
    iget-object v0, p0, mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_60

    .line 100
    iput-boolean v2, p0, mIsCandidate:Z

    goto :goto_60
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    iput v0, p0, mDir:I

    .line 70
    iput-boolean v0, p0, mIsCandidate:Z

    .line 71
    return-void
.end method

.method public isCandidate()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, mIsCandidate:Z

    return v0
.end method

.method public isCorner()Z
    .registers 2

    .prologue
    .line 39
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_c

    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1a

    :cond_c
    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    iget v0, p0, mDir:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 41
    :cond_18
    const/4 v0, 0x1

    .line 43
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isEdge()Z
    .registers 2

    .prologue
    .line 57
    iget v0, p0, mDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEdge(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 61
    iget v0, p0, mDir:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 47
    iput-object p1, p0, mBound:Landroid/graphics/Rect;

    .line 48
    iput-object p2, p0, mPadding:Landroid/graphics/Rect;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsCandidate:Z

    .line 50
    return-void
.end method

.method public setFilter(I)V
    .registers 2
    .param p1, "filter"    # I

    .prologue
    .line 53
    iput p1, p0, mFilter:I

    .line 54
    return-void
.end method
