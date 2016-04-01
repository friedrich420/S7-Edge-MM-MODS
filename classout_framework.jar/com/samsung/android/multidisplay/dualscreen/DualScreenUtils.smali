.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;
.super Ljava/lang/Object;
.source "DualScreenUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DualScreenUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2
    .param p0, "displayId"    # I

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_b

    .line 49
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 59
    :goto_a
    return-object v0

    .line 50
    :cond_b
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_16

    .line 51
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 52
    :cond_16
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_21

    .line 53
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 54
    :cond_21
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_2c

    .line 55
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 56
    :cond_2c
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_37

    .line 57
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a

    .line 59
    :cond_37
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_a
.end method

.method public static getCoupledTaskFlags()I
    .registers 1

    .prologue
    .line 79
    const/4 v0, 0x7

    return v0
.end method

.method public static getSystemWindowLayer()I
    .registers 4

    .prologue
    .line 101
    const/4 v0, 0x4

    .line 103
    .local v0, "FIRST_SYSTEM_WINDOW_LAYER":I
    const/16 v1, 0x2710

    .line 105
    .local v1, "TYPE_LAYER_MULTIPLIER":I
    const/16 v2, 0x3e8

    .line 107
    .local v2, "TYPE_LAYER_OFFSET":I
    const v3, 0xa028

    .line 108
    .local v3, "systemWindowBaseLayer":I
    return v3
.end method

.method public static hasCoupledTaskFlags(I)Z
    .registers 2
    .param p0, "flags"    # I

    .prologue
    .line 66
    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isVirtualScreen(I)Z
    .registers 3
    .param p0, "displayId"    # I

    .prologue
    .line 88
    invoke-static {p0}, displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_a

    .line 89
    const/4 v0, 0x1

    .line 91
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
