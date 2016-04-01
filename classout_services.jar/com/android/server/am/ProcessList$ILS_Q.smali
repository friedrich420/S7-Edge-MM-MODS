.class public final Lcom/android/server/am/ProcessList$ILS_Q;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ILS_Q"
.end annotation


# static fields
.field private static HARD_FLAG:Z

.field private static ILS_DEBUG:Z

.field private static MAX_Q_SIZE:I

.field private static Q_Front:I

.field private static Q_Node:[Ljava/lang/String;

.field private static Q_Rear:I

.field private static Q_Size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 1439
    sput-boolean v2, HARD_FLAG:Z

    .line 1442
    const-string/jumbo v0, "ro.config.dha_ils_size"

    const-string v1, "22"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_Q_SIZE:I

    .line 1443
    sput v2, Q_Front:I

    .line 1444
    sput v2, Q_Rear:I

    .line 1445
    sput v2, Q_Size:I

    .line 1446
    sget v0, MAX_Q_SIZE:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Q_Node:[Ljava/lang/String;

    .line 1449
    sput-boolean v2, ILS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppsLaunchFreq(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 1496
    invoke-static {p0}, isInsert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1498
    sget-boolean v0, ILS_DEBUG:Z

    if-eqz v0, :cond_2e

    .line 1499
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ILS: Launch App: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, HARD_FLAG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :cond_2e
    sget-boolean v0, HARD_FLAG:Z

    return v0
.end method

.method private static isInsert(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1454
    const-string/jumbo v4, "launcher"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "googlequicksearchbox"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "contact"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1c
    move v2, v3

    .line 1491
    :cond_1d
    :goto_1d
    return v2

    .line 1458
    :cond_1e
    const/4 v1, 0x0

    .line 1460
    .local v1, "nullCount":I
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ge v4, v5, :cond_2b

    .line 1461
    sget v4, Q_Size:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Size:I

    .line 1463
    :cond_2b
    sget-object v4, Q_Node:[Ljava/lang/String;

    sget v5, Q_Front:I

    aput-object p0, v4, v5

    .line 1465
    sget v0, Q_Rear:I

    .local v0, "i":I
    :cond_33
    :goto_33
    sget v4, Q_Front:I

    if-eq v0, v4, :cond_4e

    .line 1466
    sget-object v4, Q_Node:[Ljava/lang/String;

    sget v5, Q_Front:I

    aget-object v4, v4, v5

    sget-object v5, Q_Node:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1467
    sget-object v4, Q_Node:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 1468
    sput-boolean v3, HARD_FLAG:Z

    .line 1482
    :cond_4e
    sget v4, Q_Front:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Front:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_5a

    .line 1483
    sput v3, Q_Front:I

    .line 1485
    :cond_5a
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1d

    .line 1486
    sget v4, Q_Rear:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Q_Rear:I

    .line 1487
    sget v4, Q_Rear:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_1d

    .line 1488
    sput v3, Q_Rear:I

    goto :goto_1d

    .line 1471
    :cond_6f
    sget-object v4, Q_Node:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-nez v4, :cond_81

    .line 1472
    sput-boolean v3, HARD_FLAG:Z

    .line 1473
    add-int/lit8 v1, v1, 0x1

    .line 1478
    :cond_79
    :goto_79
    add-int/lit8 v0, v0, 0x1

    sget v4, MAX_Q_SIZE:I

    if-ne v0, v4, :cond_33

    .line 1479
    const/4 v0, 0x0

    goto :goto_33

    .line 1475
    :cond_81
    sget v4, Q_Size:I

    sget v5, MAX_Q_SIZE:I

    if-ne v4, v5, :cond_79

    if-nez v1, :cond_79

    .line 1476
    sput-boolean v2, HARD_FLAG:Z

    goto :goto_79
.end method
