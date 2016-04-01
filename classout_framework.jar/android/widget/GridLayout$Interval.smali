.class final Landroid/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Interval"
.end annotation


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 2435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2436
    iput p1, p0, min:I

    .line 2437
    iput p2, p0, max:I

    .line 2438
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2460
    if-ne p0, p1, :cond_5

    .line 2477
    :cond_4
    :goto_4
    return v1

    .line 2463
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 2464
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 2467
    check-cast v0, Landroid/widget/GridLayout$Interval;

    .line 2469
    .local v0, "interval":Landroid/widget/GridLayout$Interval;
    iget v3, p0, max:I

    iget v4, v0, max:I

    if-eq v3, v4, :cond_1e

    move v1, v2

    .line 2470
    goto :goto_4

    .line 2473
    :cond_1e
    iget v3, p0, min:I

    iget v4, v0, min:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 2474
    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 2482
    iget v0, p0, min:I

    .line 2483
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, max:I

    add-int v0, v1, v2

    .line 2484
    return v0
.end method

.method inverse()Landroid/widget/GridLayout$Interval;
    .registers 4

    .prologue
    .line 2445
    new-instance v0, Landroid/widget/GridLayout$Interval;

    iget v1, p0, max:I

    iget v2, p0, min:I

    invoke-direct {v0, v1, v2}, <init>(II)V

    return-object v0
.end method

.method size()I
    .registers 3

    .prologue
    .line 2441
    iget v0, p0, max:I

    iget v1, p0, min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
