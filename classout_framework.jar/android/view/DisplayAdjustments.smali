.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

.field public static final DEVELOPMENT_RESOURCES_DEPEND_ON_ACTIVITY_TOKEN:Z


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, <init>()V

    sput-object v0, DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 31
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 31
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 37
    iput-object p1, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .registers 3
    .param p1, "daj"    # Landroid/view/DisplayAdjustments;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 31
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 41
    iget-object v0, p1, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 42
    iget-object v0, p1, mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 86
    instance-of v2, p1, Landroid/view/DisplayAdjustments;

    if-nez v2, :cond_6

    .line 90
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 89
    check-cast v0, Landroid/view/DisplayAdjustments;

    .line 90
    .local v0, "daj":Landroid/view/DisplayAdjustments;
    iget-object v2, v0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 76
    const/16 v0, 0x11

    .line 77
    .local v0, "hash":I
    iget-object v1, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 81
    return v0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 46
    sget-object v0, DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_d

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_d
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 52
    :cond_1b
    iput-object p1, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 56
    :goto_1d
    return-void

    .line 54
    :cond_1e
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_1d
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 63
    sget-object v0, DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-ne p0, v0, :cond_d

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_d
    iput-object p1, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 68
    return-void
.end method
