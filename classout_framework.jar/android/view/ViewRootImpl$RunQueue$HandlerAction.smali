.class Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$RunQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerAction"
.end annotation


# instance fields
.field action:Ljava/lang/Runnable;

.field delay:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/view/ViewRootImpl$1;

    .prologue
    .line 8570
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8576
    if-ne p0, p1, :cond_5

    .line 8580
    :cond_4
    :goto_4
    return v1

    .line 8577
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 8579
    check-cast v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    .line 8580
    .local v0, "that":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v3, p0, action:Ljava/lang/Runnable;

    if-eqz v3, :cond_26

    iget-object v3, p0, action:Ljava/lang/Runnable;

    iget-object v4, v0, action:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, action:Ljava/lang/Runnable;

    if-nez v3, :cond_24

    goto :goto_4
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 8586
    iget-object v1, p0, action:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    iget-object v1, p0, action:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 8587
    .local v0, "result":I
    :goto_a
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, delay:J

    iget-wide v4, p0, delay:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 8588
    return v0

    .line 8586
    .end local v0    # "result":I
    :cond_18
    const/4 v0, 0x0

    goto :goto_a
.end method
