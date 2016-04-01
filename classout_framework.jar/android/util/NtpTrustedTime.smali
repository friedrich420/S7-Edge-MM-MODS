.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mRetryStep:I

.field private mServer:Ljava/lang/String;

.field private mServer2:Ljava/lang/String;

.field private mServer3:Ljava/lang/String;

.field private mServer4:Ljava/lang/String;

.field private mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .registers 8
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, mServer2:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, mServer3:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, mServer4:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, mRetryStep:I

    .line 63
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, mServer:Ljava/lang/String;

    .line 65
    iput-wide p2, p0, mTimeout:J

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, mServer2:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, mServer3:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, mServer4:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, mRetryStep:I

    .line 70
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, mServer:Ljava/lang/String;

    .line 72
    iput-object p2, p0, mServer2:Ljava/lang/String;

    .line 73
    iput-wide p3, p0, mTimeout:J

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "server3"    # Ljava/lang/String;
    .param p4, "timeout"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, mServer2:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, mServer3:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, mServer4:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, mRetryStep:I

    .line 77
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, mServer:Ljava/lang/String;

    .line 79
    iput-object p2, p0, mServer2:Ljava/lang/String;

    .line 80
    iput-object p3, p0, mServer3:Ljava/lang/String;

    .line 81
    iput-wide p4, p0, mTimeout:J

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "server2"    # Ljava/lang/String;
    .param p3, "server3"    # Ljava/lang/String;
    .param p4, "server4"    # Ljava/lang/String;
    .param p5, "timeout"    # J

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, mServer2:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, mServer3:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, mServer4:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, mRetryStep:I

    .line 85
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using server1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, mServer:Ljava/lang/String;

    .line 87
    iput-object p2, p0, mServer2:Ljava/lang/String;

    .line 88
    iput-object p3, p0, mServer3:Ljava/lang/String;

    .line 89
    iput-object p4, p0, mServer4:Ljava/lang/String;

    .line 90
    iput-wide p5, p0, mTimeout:J

    .line 91
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-class v21, Landroid/util/NtpTrustedTime;

    monitor-enter v21

    :try_start_3
    sget-object v3, sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v3, :cond_7f

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 104
    .local v18, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 106
    .local v19, "resolver":Landroid/content/ContentResolver;
    const v3, 0x104003b

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "defaultServer":Ljava/lang/String;
    const v3, 0x10e007c

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .line 111
    .local v14, "defaultTimeout":J
    const-string/jumbo v3, "ntp_server"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 113
    .local v20, "secureServer":Ljava/lang/String;
    const-string/jumbo v3, "ntp_timeout"

    move-object/from16 v0, v19

    invoke-static {v0, v3, v14, v15}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    .line 116
    .local v22, "timeout":J
    if-eqz v20, :cond_83

    move-object/from16 v4, v20

    .line 118
    .local v4, "server":Ljava/lang/String;
    :goto_38
    const v3, 0x104073f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "server2":Ljava/lang/String;
    const v3, 0x1040740

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "server3":Ljava/lang/String;
    const v3, 0x1040741

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "server4":Ljava/lang/String;
    const-wide/16 v16, 0x1388

    .line 126
    .local v16, "multiTimeout":J
    invoke-static {}, isCHNOrHKTW()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 128
    const-string v3, "NtpTrustedTime"

    const-string v8, "Reduce timeout value because of china weak network. Timeout = 5000"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 130
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_85

    .line 131
    new-instance v3, Landroid/util/NtpTrustedTime;

    const-wide/16 v8, 0x1388

    invoke-direct/range {v3 .. v9}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v3, sSingleton:Landroid/util/NtpTrustedTime;

    .line 142
    :goto_7d
    sput-object p0, sContext:Landroid/content/Context;

    .line 145
    .end local v2    # "defaultServer":Ljava/lang/String;
    .end local v4    # "server":Ljava/lang/String;
    .end local v5    # "server2":Ljava/lang/String;
    .end local v6    # "server3":Ljava/lang/String;
    .end local v7    # "server4":Ljava/lang/String;
    .end local v14    # "defaultTimeout":J
    .end local v16    # "multiTimeout":J
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    .end local v20    # "secureServer":Ljava/lang/String;
    .end local v22    # "timeout":J
    :cond_7f
    sget-object v3, sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_92

    monitor-exit v21

    return-object v3

    .restart local v2    # "defaultServer":Ljava/lang/String;
    .restart local v14    # "defaultTimeout":J
    .restart local v18    # "res":Landroid/content/res/Resources;
    .restart local v19    # "resolver":Landroid/content/ContentResolver;
    .restart local v20    # "secureServer":Ljava/lang/String;
    .restart local v22    # "timeout":J
    :cond_83
    move-object v4, v2

    .line 116
    goto :goto_38

    .line 133
    .restart local v4    # "server":Ljava/lang/String;
    .restart local v5    # "server2":Ljava/lang/String;
    .restart local v6    # "server3":Ljava/lang/String;
    .restart local v7    # "server4":Ljava/lang/String;
    .restart local v16    # "multiTimeout":J
    :cond_85
    :try_start_85
    new-instance v8, Landroid/util/NtpTrustedTime;

    const-wide/16 v12, 0x1388

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v8, sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_91
    .catchall {:try_start_85 .. :try_end_91} :catchall_92

    goto :goto_7d

    .line 102
    .end local v2    # "defaultServer":Ljava/lang/String;
    .end local v4    # "server":Ljava/lang/String;
    .end local v5    # "server2":Ljava/lang/String;
    .end local v6    # "server3":Ljava/lang/String;
    .end local v7    # "server4":Ljava/lang/String;
    .end local v14    # "defaultTimeout":J
    .end local v16    # "multiTimeout":J
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "resolver":Landroid/content/ContentResolver;
    .end local v20    # "secureServer":Ljava/lang/String;
    .end local v22    # "timeout":J
    :catchall_92
    move-exception v3

    monitor-exit v21

    throw v3

    .line 137
    .restart local v2    # "defaultServer":Ljava/lang/String;
    .restart local v4    # "server":Ljava/lang/String;
    .restart local v5    # "server2":Ljava/lang/String;
    .restart local v6    # "server3":Ljava/lang/String;
    .restart local v7    # "server4":Ljava/lang/String;
    .restart local v14    # "defaultTimeout":J
    .restart local v16    # "multiTimeout":J
    .restart local v18    # "res":Landroid/content/res/Resources;
    .restart local v19    # "resolver":Landroid/content/ContentResolver;
    .restart local v20    # "secureServer":Ljava/lang/String;
    .restart local v22    # "timeout":J
    :cond_95
    :try_start_95
    new-instance v3, Landroid/util/NtpTrustedTime;

    const-wide/16 v8, 0x1388

    invoke-direct {v3, v4, v5, v8, v9}, <init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v3, sSingleton:Landroid/util/NtpTrustedTime;

    goto :goto_7d

    .line 140
    :cond_9f
    new-instance v3, Landroid/util/NtpTrustedTime;

    move-wide/from16 v0, v22

    invoke-direct {v3, v4, v0, v1}, <init>(Ljava/lang/String;J)V

    sput-object v3, sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_a8
    .catchall {:try_start_95 .. :try_end_a8} :catchall_92

    goto :goto_7d
.end method

.method private static isCHNOrHKTW()Z
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "CHC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "BRI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "TGY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CWT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "FET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "TWM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHZ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    :cond_5f
    const/4 v1, 0x1

    :goto_60
    return v1

    :cond_61
    const/4 v1, 0x0

    goto :goto_60
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 5

    .prologue
    .line 294
    iget-boolean v0, p0, mHasCache:Z

    if-nez v0, :cond_c

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_c
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-wide v0, p0, mCachedNtpTime:J

    invoke-virtual {p0}, getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .registers 14

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 150
    iget-object v4, p0, mServer:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    .line 266
    :goto_e
    return v4

    .line 156
    :cond_f
    monitor-enter p0

    .line 157
    :try_start_10
    iget-object v4, p0, mCM:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_20

    .line 158
    sget-object v4, sContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, mCM:Landroid/net/ConnectivityManager;

    .line 160
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_37

    .line 162
    iget-object v4, p0, mCM:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_3a

    const/4 v2, 0x0

    .line 163
    .local v2, "ni":Landroid/net/NetworkInfo;
    :goto_26
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_41

    .line 164
    :cond_2e
    const-string v4, "NtpTrustedTime"

    const-string v6, "forceRefresh: no connectivity"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 165
    goto :goto_e

    .line 160
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :catchall_37
    move-exception v4

    :try_start_38
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v4

    .line 162
    :cond_3a
    iget-object v4, p0, mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_26

    .line 169
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_41
    const-string/jumbo v4, "ril.pco.default"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 170
    .local v3, "pco":I
    if-ne v3, v12, :cond_6a

    .line 171
    const-string v4, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceRefresh: ril.pco.default ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 172
    goto :goto_e

    .line 176
    :cond_6a
    const-string v4, "NtpTrustedTime"

    const-string v7, "forceRefresh() from cache miss"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string/jumbo v4, "ril.ntptrustedtime"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "labtest":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 181
    const-string v4, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceRefresh: ril.ntptrustedtime ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 182
    goto/16 :goto_e

    .line 186
    :cond_a2
    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    .line 189
    .local v0, "client":Landroid/net/SntpClient;
    iget v4, p0, mRetryStep:I

    packed-switch v4, :pswitch_data_2ce

    .line 260
    iput v5, p0, mRetryStep:I

    .line 265
    :goto_ae
    const-string v4, "NtpTrustedTime"

    const-string v6, "forceRefresh Fail."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 266
    goto/16 :goto_e

    .line 191
    :pswitch_b8
    iget-object v4, p0, mServer:Ljava/lang/String;

    iget-wide v8, p0, mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_11a

    .line 192
    iput-boolean v6, p0, mHasCache:Z

    .line 193
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpTime:J

    .line 194
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpElapsedRealtime:J

    .line 195
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p0, mCachedNtpCertainty:J

    .line 196
    const-string v4, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mServer:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpElapsedRealtime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpCertainty:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 199
    goto/16 :goto_e

    .line 201
    :cond_11a
    invoke-static {}, isCHNOrHKTW()Z

    move-result v4

    if-eqz v4, :cond_123

    .line 202
    iput v6, p0, mRetryStep:I

    goto :goto_ae

    .line 204
    :cond_123
    const/4 v4, 0x4

    iput v4, p0, mRetryStep:I

    goto :goto_ae

    .line 208
    :pswitch_127
    iget-object v4, p0, mServer2:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_191

    iget-object v4, p0, mServer2:Ljava/lang/String;

    iget-wide v8, p0, mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_191

    .line 209
    iput-boolean v6, p0, mHasCache:Z

    .line 210
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpTime:J

    .line 211
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpElapsedRealtime:J

    .line 212
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p0, mCachedNtpCertainty:J

    .line 213
    const-string v4, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server2:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mServer2:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpElapsedRealtime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpCertainty:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 216
    goto/16 :goto_e

    .line 218
    :cond_191
    iput v12, p0, mRetryStep:I

    goto/16 :goto_ae

    .line 221
    :pswitch_195
    iget-object v4, p0, mServer3:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1ff

    iget-object v4, p0, mServer3:Ljava/lang/String;

    iget-wide v8, p0, mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1ff

    .line 222
    iput-boolean v6, p0, mHasCache:Z

    .line 223
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpTime:J

    .line 224
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpElapsedRealtime:J

    .line 225
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p0, mCachedNtpCertainty:J

    .line 226
    const-string v4, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server3:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mServer3:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpElapsedRealtime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpCertainty:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 229
    goto/16 :goto_e

    .line 231
    :cond_1ff
    const/4 v4, 0x3

    iput v4, p0, mRetryStep:I

    goto/16 :goto_ae

    .line 234
    :pswitch_204
    iget-object v4, p0, mServer4:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_26e

    iget-object v4, p0, mServer4:Ljava/lang/String;

    iget-wide v8, p0, mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26e

    .line 235
    iput-boolean v6, p0, mHasCache:Z

    .line 236
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpTime:J

    .line 237
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpElapsedRealtime:J

    .line 238
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p0, mCachedNtpCertainty:J

    .line 239
    const-string v4, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server4:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, mServer4:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpElapsedRealtime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpCertainty:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 242
    goto/16 :goto_e

    .line 244
    :cond_26e
    iput v5, p0, mRetryStep:I

    goto/16 :goto_ae

    .line 247
    :pswitch_272
    const-string/jumbo v4, "north-america.pool.ntp.org"

    iget-wide v8, p0, mTimeout:J

    long-to-int v7, v8

    invoke-virtual {v0, v4, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2c9

    .line 248
    iput-boolean v6, p0, mHasCache:Z

    .line 249
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpTime:J

    .line 250
    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, mCachedNtpElapsedRealtime:J

    .line 251
    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    div-long/2addr v4, v10

    iput-wide v4, p0, mCachedNtpCertainty:J

    .line 252
    const-string v4, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestTime Success from server:north-america.pool.ntp.org mCachedNtpTime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpElapsedRealtime : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpElapsedRealtime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mCachedNtpCertainty : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, mCachedNtpCertainty:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 255
    goto/16 :goto_e

    .line 257
    :cond_2c9
    iput v5, p0, mRetryStep:I

    goto/16 :goto_ae

    .line 189
    nop

    :pswitch_data_2ce
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_127
        :pswitch_195
        :pswitch_204
        :pswitch_272
    .end packed-switch
.end method

.method public getCacheAge()J
    .registers 5

    .prologue
    .line 276
    iget-boolean v0, p0, mHasCache:Z

    if-eqz v0, :cond_c

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 279
    :goto_b
    return-wide v0

    :cond_c
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_b
.end method

.method public getCacheCertainty()J
    .registers 3

    .prologue
    .line 285
    iget-boolean v0, p0, mHasCache:Z

    if-eqz v0, :cond_7

    .line 286
    iget-wide v0, p0, mCachedNtpCertainty:J

    .line 288
    :goto_6
    return-wide v0

    :cond_7
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_6
.end method

.method public getCachedNtpTime()J
    .registers 3

    .prologue
    .line 305
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-wide v0, p0, mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .registers 3

    .prologue
    .line 310
    iget-wide v0, p0, mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .registers 2

    .prologue
    .line 271
    iget-boolean v0, p0, mHasCache:Z

    return v0
.end method

.method public setNtpInfoInternal(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "server"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    const v9, 0x10e007c

    .line 315
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_f

    .line 316
    const/4 v6, 0x0

    .line 342
    :goto_e
    return v6

    .line 317
    :cond_f
    const-string v6, "NtpTrustedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setNtpInfoInternal server "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " timeout "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 319
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 320
    .local v4, "resolver":Landroid/content/ContentResolver;
    if-nez p2, :cond_60

    .line 321
    const v6, 0x104003b

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "defaultServer":Ljava/lang/String;
    const-string/jumbo v6, "ntp_server"

    invoke-static {v4, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "secureServer":Ljava/lang/String;
    if-eqz v5, :cond_5e

    .end local v5    # "secureServer":Ljava/lang/String;
    :goto_4c
    iput-object v5, p0, mServer:Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v2, v6

    .line 330
    .local v2, "defaultTimeout":J
    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v4, v6, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, mTimeout:J

    .line 342
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v2    # "defaultTimeout":J
    :goto_5c
    const/4 v6, 0x1

    goto :goto_e

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v5    # "secureServer":Ljava/lang/String;
    :cond_5e
    move-object v5, v0

    .line 327
    goto :goto_4c

    .line 332
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v5    # "secureServer":Ljava/lang/String;
    :cond_60
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-nez v6, :cond_77

    .line 333
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v2, v6

    .line 335
    .restart local v2    # "defaultTimeout":J
    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v4, v6, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, mTimeout:J

    .line 337
    iput-object p2, p0, mServer:Ljava/lang/String;

    goto :goto_5c

    .line 339
    .end local v2    # "defaultTimeout":J
    :cond_77
    iput-object p2, p0, mServer:Ljava/lang/String;

    .line 340
    iput-wide p3, p0, mTimeout:J

    goto :goto_5c
.end method
