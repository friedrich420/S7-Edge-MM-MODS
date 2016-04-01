.class public Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field private static final sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field public column:I

.field public row:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 169
    invoke-static {}, createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    sput-object v0, sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {p1, p2}, checkRange(II)V

    .line 187
    iput p1, p0, row:I

    .line 188
    iput p2, p0, column:I

    .line 189
    return-void
.end method

.method private static checkRange(II)V
    .registers 4
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    const/4 v0, 0x2

    .line 205
    if-ltz p0, :cond_5

    if-le p0, v0, :cond_e

    .line 206
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "row must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_e
    if-ltz p1, :cond_12

    if-le p1, v0, :cond_1a

    .line 209
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "column must be in range 0-2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_1a
    return-void
.end method

.method private static createCells()[[Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 6

    .prologue
    const/4 v5, 0x3

    .line 172
    filled-new-array {v5, v5}, [I

    move-result-object v3

    const-class v4, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    .line 173
    .local v2, "res":[[Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v5, :cond_22

    .line 174
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_11
    if-ge v1, v5, :cond_1f

    .line 175
    aget-object v3, v2, v0

    new-instance v4, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v4, v0, v1}, <init>(II)V

    aput-object v4, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 173
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 178
    .end local v1    # "j":I
    :cond_22
    return-object v2
.end method

.method public static of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 3
    .param p0, "row"    # I
    .param p1, "column"    # I

    .prologue
    .line 200
    invoke-static {p0, p1}, checkRange(II)V

    .line 201
    sget-object v0, sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, column:I

    return v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
