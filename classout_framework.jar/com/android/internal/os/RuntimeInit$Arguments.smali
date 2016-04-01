.class Lcom/android/internal/os/RuntimeInit$Arguments;
.super Ljava/lang/Object;
.source "RuntimeInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Arguments"
.end annotation


# instance fields
.field startArgs:[Ljava/lang/String;

.field startClass:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    invoke-direct {p0, p1}, parseArgs([Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .registers 8
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "curArg":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_10

    .line 417
    aget-object v0, p1, v1

    .line 419
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 427
    .end local v0    # "arg":Ljava/lang/String;
    :cond_10
    array-length v3, p1

    if-ne v1, v3, :cond_26

    .line 428
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing classname argument to RuntimeInit!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 422
    .restart local v0    # "arg":Ljava/lang/String;
    :cond_1b
    const-string v3, "--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    .end local v0    # "arg":Ljava/lang/String;
    :cond_26
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "curArg":I
    .local v2, "curArg":I
    aget-object v3, p1, v1

    iput-object v3, p0, startClass:Ljava/lang/String;

    .line 432
    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, startArgs:[Ljava/lang/String;

    .line 433
    iget-object v3, p0, startArgs:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, startArgs:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    return-void
.end method
