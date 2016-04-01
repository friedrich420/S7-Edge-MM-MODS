.class public Lcom/android/server/enterprise/otp/RateCheck;
.super Ljava/lang/Object;
.source "RateCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/otp/RateCheck$RateData;
    }
.end annotation


# static fields
.field public static final BLOCKING_PERIOD:I = 0xea60

.field private static final CALL_LIMIT:I = 0x3c

.field private static final CUTOFF_TIME:J = 0xea60L

.field private static final FAIL_LIMIT:I = 0x1e

.field private static mInstance:Lcom/android/server/enterprise/otp/RateCheck;


# instance fields
.field mBlockList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCallLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/RateCheck$RateData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, mCallLog:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, mBlockList:Ljava/util/HashMap;

    .line 100
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/RateCheck;
    .registers 3

    .prologue
    .line 90
    const-class v1, Lcom/android/server/enterprise/otp/RateCheck;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    if-nez v0, :cond_20

    .line 91
    new-instance v0, Lcom/android/server/enterprise/otp/RateCheck;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    .line 92
    sget-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, mCallLog:Ljava/util/ArrayList;

    .line 93
    sget-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, mBlockList:Ljava/util/HashMap;

    .line 95
    :cond_20
    sget-object v0, mInstance:Lcom/android/server/enterprise/otp/RateCheck;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized validateCaller(Ljava/lang/String;)Z
    .registers 14
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 54
    monitor-enter p0

    const/4 v2, 0x0

    .line 55
    .local v2, "failCount":I
    const/4 v6, 0x0

    .line 56
    .local v6, "totalCount":I
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    .local v0, "currentTime":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v5, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    iget-object v7, p0, mCallLog:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .line 60
    .local v4, "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    # getter for: Lcom/android/server/enterprise/otp/RateCheck$RateData;->caller:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->access$000(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 61
    # getter for: Lcom/android/server/enterprise/otp/RateCheck$RateData;->timestamp:J
    invoke-static {v4}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->access$100(Lcom/android/server/enterprise/otp/RateCheck$RateData;)J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-gez v7, :cond_40

    .line 62
    # getter for: Lcom/android/server/enterprise/otp/RateCheck$RateData;->result:Z
    invoke-static {v4}, Lcom/android/server/enterprise/otp/RateCheck$RateData;->access$200(Lcom/android/server/enterprise/otp/RateCheck$RateData;)Z

    move-result v7

    if-nez v7, :cond_3d

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 66
    :cond_40
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    goto :goto_12

    .line 54
    .end local v0    # "currentTime":J
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    .end local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    :catchall_44
    move-exception v7

    monitor-exit p0

    throw v7

    .line 71
    .restart local v0    # "currentTime":J
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/otp/RateCheck$RateData;>;"
    :cond_47
    :try_start_47
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_63

    .line 72
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    .line 73
    .restart local v4    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    iget-object v7, p0, mCallLog:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_51

    .line 76
    .end local v4    # "rd":Lcom/android/server/enterprise/otp/RateCheck$RateData;
    :cond_63
    const/16 v7, 0x1e

    if-gt v2, v7, :cond_6b

    const/16 v7, 0x3c

    if-le v6, v7, :cond_9f

    .line 77
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RateCheck::Blocking - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    .line 78
    iget-object v7, p0, mBlockList:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9c
    .catchall {:try_start_47 .. :try_end_9c} :catchall_44

    .line 79
    const/4 v7, 0x1

    .line 82
    :goto_9d
    monitor-exit p0

    return v7

    :cond_9f
    const/4 v7, 0x0

    goto :goto_9d
.end method


# virtual methods
.method public declared-synchronized isCallMalicious(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "tokenId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    monitor-enter p0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "caller":Ljava/lang/String;
    iget-object v1, p0, mBlockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, mBlockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v1, v4, v6

    if-lez v1, :cond_5f

    .line 35
    iget-object v1, p0, mBlockList:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RateCheck:: removing from Blocklist - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_79

    move v1, v2

    .line 44
    :goto_5d
    monitor-exit p0

    return v1

    .line 40
    :cond_5f
    :try_start_5f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RateCheck:: caller is in Blocklist - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_79

    .line 41
    const/4 v1, 0x1

    goto :goto_5d

    :cond_77
    move v1, v2

    .line 44
    goto :goto_5d

    .line 31
    .end local v0    # "caller":Ljava/lang/String;
    :catchall_79
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateData(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "tokenId"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "result"    # Z

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "caller":Ljava/lang/String;
    iget-object v0, p0, mCallLog:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/enterprise/otp/RateCheck$RateData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v3, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/otp/RateCheck$RateData;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-direct {p0, v2}, validateCaller(Ljava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 51
    monitor-exit p0

    return-void

    .line 48
    .end local v2    # "caller":Ljava/lang/String;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
