.class Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepeatCallers"
.end annotation


# instance fields
.field private final mCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThresholdMinutes:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeFiltering$1;

    .prologue
    .line 279
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .prologue
    .line 279
    iget v0, p0, mThresholdMinutes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .prologue
    .line 279
    iget-object v0, p0, mCalls:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 284
    monitor-enter p0

    :try_start_2
    iget v8, p0, mThresholdMinutes:I

    if-gtz v8, :cond_13

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00a8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, mThresholdMinutes:I

    .line 288
    :cond_13
    iget v8, p0, mThresholdMinutes:I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_64

    if-lez v8, :cond_19

    if-nez p2, :cond_1b

    .line 301
    :cond_19
    :goto_19
    monitor-exit p0

    return v2

    .line 289
    :cond_1b
    :try_start_1b
    invoke-static {p2}, peopleString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "peopleString":Ljava/lang/String;
    if-eqz v3, :cond_19

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 292
    .local v4, "now":J
    iget-object v8, p0, mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 293
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_2d
    if-ltz v1, :cond_54

    .line 294
    iget-object v8, p0, mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 295
    .local v6, "time":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_4c

    sub-long v8, v4, v6

    iget v10, p0, mThresholdMinutes:I

    mul-int/lit16 v10, v10, 0x3e8

    mul-int/lit8 v10, v10, 0x3c

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_51

    .line 296
    :cond_4c
    iget-object v8, p0, mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 293
    :cond_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 299
    .end local v6    # "time":J
    :cond_54
    iget-object v8, p0, mCalls:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 300
    .local v2, "isRepeat":Z
    iget-object v8, p0, mCalls:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1b .. :try_end_63} :catchall_64

    goto :goto_19

    .line 284
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "isRepeat":Z
    .end local v3    # "peopleString":Ljava/lang/String;
    .end local v4    # "now":J
    :catchall_64
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private static peopleString(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-static {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "extraPeople":[Ljava/lang/String;
    if-eqz v0, :cond_a

    array-length v5, v0

    if-nez v5, :cond_b

    .line 318
    :cond_a
    :goto_a
    return-object v4

    .line 307
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v5, v0

    if-ge v2, v5, :cond_34

    .line 309
    aget-object v1, v0, v2

    .line 310
    .local v1, "extraPerson":Ljava/lang/String;
    if-nez v1, :cond_1b

    .line 308
    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 311
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_18

    .line 313
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 314
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    :cond_30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 318
    .end local v1    # "extraPerson":Ljava/lang/String;
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method
