.class abstract Landroid/security/keystore/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;
    .registers 2
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 30
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
