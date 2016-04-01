.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjust(II)I
    .registers 7
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 22451
    invoke-static {p0}, getMode(I)I

    move-result v0

    .line 22452
    .local v0, "mode":I
    invoke-static {p0}, getSize(I)I

    move-result v1

    .line 22453
    .local v1, "size":I
    if-nez v0, :cond_10

    .line 22455
    const/4 v2, 0x0

    invoke-static {v1, v2}, makeMeasureSpec(II)I

    move-result v2

    .line 22463
    :goto_f
    return v2

    .line 22457
    :cond_10
    add-int/2addr v1, p1

    .line 22458
    if-gez v1, :cond_44

    .line 22459
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MeasureSpec.adjust: new size would be negative! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22461
    const/4 v1, 0x0

    .line 22463
    :cond_44
    invoke-static {v1, v0}, makeMeasureSpec(II)I

    move-result v2

    goto :goto_f
.end method

.method public static getMode(I)I
    .registers 2
    .param p0, "measureSpec"    # I

    .prologue
    .line 22437
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .registers 2
    .param p0, "measureSpec"    # I

    .prologue
    .line 22447
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    .line 22408
    # getter for: Landroid/view/View;->sUseBrokenMakeMeasureSpec:Z
    invoke-static {}, Landroid/view/View;->access$2800()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22409
    add-int v0, p0, p1

    .line 22411
    :goto_8
    return v0

    :cond_9
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    goto :goto_8
.end method

.method public static makeSafeMeasureSpec(II)I
    .registers 3
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .prologue
    .line 22422
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    .line 22423
    const/4 v0, 0x0

    .line 22425
    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1}, makeMeasureSpec(II)I

    move-result v0

    goto :goto_7
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 6
    .param p0, "measureSpec"    # I

    .prologue
    .line 22474
    invoke-static {p0}, getMode(I)I

    move-result v0

    .line 22475
    .local v0, "mode":I
    invoke-static {p0}, getSize(I)I

    move-result v2

    .line 22477
    .local v2, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22479
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_1e

    .line 22480
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22488
    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 22481
    :cond_1e
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_28

    .line 22482
    const-string v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 22483
    :cond_28
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_32

    .line 22484
    const-string v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 22486
    :cond_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method
