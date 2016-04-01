.class public final Lcom/sec/epdg/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "EPDG -- "

.field private static final TOO_MANY_ERROR_MESSAGES:I = 0xa

.field private static final TOO_MANY_WTF_MESSAGES:I = 0xa

.field private static mErrMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWtfMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xa

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, mErrMessages:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, mWtfMessages:Ljava/util/ArrayList;

    .line 20
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isShipBinary()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, DEBUG:Z

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToErrorList(Ljava/lang/String;)V
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v3, mErrMessages:Ljava/util/ArrayList;

    monitor-enter v3

    .line 53
    :try_start_3
    sget-object v2, mErrMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 54
    .local v0, "size":I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_13

    .line 55
    sget-object v2, mErrMessages:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    :cond_13
    const-string v1, " Thread: "

    .line 58
    .local v1, "threadAndTS":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " TimeStamp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    sget-object v2, mErrMessages:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v3

    .line 65
    return-void

    .line 64
    .end local v0    # "size":I
    .end local v1    # "threadAndTS":Ljava/lang/String;
    :catchall_81
    move-exception v2

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_3 .. :try_end_83} :catchall_81

    throw v2
.end method

.method private static addToWtfList(Ljava/lang/String;)V
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v2, mWtfMessages:Ljava/util/ArrayList;

    monitor-enter v2

    .line 43
    :try_start_3
    sget-object v1, mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 44
    .local v0, "size":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_13

    .line 45
    sget-object v1, mWtfMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 47
    :cond_13
    sget-object v1, mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v2

    .line 49
    return-void

    .line 48
    .end local v0    # "size":I
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static d(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1c

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1c
    return-void
.end method

.method public static dump()Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    new-instance v0, Ljava/lang/String;

    const-string v4, "#####"

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "delimiter":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    .local v2, "mAllErrMsg":Ljava/lang/String;
    sget-object v5, mWtfMessages:Ljava/util/ArrayList;

    monitor-enter v5

    .line 27
    :try_start_f
    sget-object v4, mWtfMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 28
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    goto :goto_15

    .line 30
    .end local v3    # "s":Ljava/lang/String;
    :cond_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_6c

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object v5, mErrMessages:Ljava/util/ArrayList;

    monitor-enter v5

    .line 33
    :try_start_48
    sget-object v4, mErrMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 34
    .restart local v3    # "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6a
    .catchall {:try_start_48 .. :try_end_6a} :catchall_82

    move-result-object v2

    .line 35
    goto :goto_4e

    .line 30
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_6c
    move-exception v4

    :try_start_6d
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v4

    .line 36
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6f
    :try_start_6f
    monitor-exit v5
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_82

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    return-object v2

    .line 36
    :catchall_82
    move-exception v4

    :try_start_83
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v4
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public static final e(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1f

    .line 86
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p2}, addToErrorList(Ljava/lang/String;)V

    .line 89
    :cond_1f
    return-void
.end method

.method public static final e(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1f

    .line 97
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    invoke-static {p2}, addToErrorList(Ljava/lang/String;)V

    .line 100
    :cond_1f
    return-void
.end method

.method private static getTimestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 69
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy h:mm:ss a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, i(ZLjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static i(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1c

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1c
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, v(ZLjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static v(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1c

    .line 118
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, w(ZLjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static w(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_6

    if-eqz p0, :cond_1c

    .line 138
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1c
    return-void
.end method

.method public static final wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "subtag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, wtf(ZLjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static final wtf(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "includeInUserBin"    # Z
    .param p1, "subtag"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-boolean v0, DEBUG:Z

    if-nez v0, :cond_6

    if-eqz p0, :cond_1f

    .line 75
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EPDG -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p2}, addToWtfList(Ljava/lang/String;)V

    .line 78
    :cond_1f
    return-void
.end method
