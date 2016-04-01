.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mNextServerIndex:I

.field private final mUserAgent:Ljava/lang/String;

.field private final mXtraServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "GpsXtraDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, "count":I
    const-string v7, "XTRA_SERVER_1"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "server1":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_2"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "server2":Ljava/lang/String;
    const-string v7, "XTRA_SERVER_3"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "server3":Ljava/lang/String;
    if-eqz v4, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 60
    :cond_1a
    if-eqz v5, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 61
    :cond_1e
    if-eqz v6, :cond_22

    add-int/lit8 v1, v1, 0x1

    .line 64
    :cond_22
    const-string v7, "XTRA_USER_AGENT"

    invoke-virtual {p1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "agent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 66
    const-string v7, "Android"

    iput-object v7, p0, mUserAgent:Ljava/lang/String;

    .line 71
    :goto_32
    if-nez v1, :cond_42

    .line 72
    const-string v7, "GpsXtraDownloader"

    const-string v8, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v7, 0x0

    iput-object v7, p0, mXtraServers:[Ljava/lang/String;

    .line 85
    :goto_3e
    return-void

    .line 68
    :cond_3f
    iput-object v0, p0, mUserAgent:Ljava/lang/String;

    goto :goto_32

    .line 75
    :cond_42
    new-array v7, v1, [Ljava/lang/String;

    iput-object v7, p0, mXtraServers:[Ljava/lang/String;

    .line 76
    const/4 v1, 0x0

    .line 77
    if-eqz v4, :cond_6e

    iget-object v7, p0, mXtraServers:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v4, v7, v1

    .line 78
    :goto_4f
    if-eqz v5, :cond_58

    iget-object v7, p0, mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v5, v7, v2

    move v2, v1

    .line 79
    .end local v1    # "count":I
    .restart local v2    # "count":I
    :cond_58
    if-eqz v6, :cond_6c

    iget-object v7, p0, mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "count":I
    .restart local v1    # "count":I
    aput-object v6, v7, v2

    .line 82
    :goto_60
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 83
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    iput v7, p0, mNextServerIndex:I

    goto :goto_3e

    .end local v1    # "count":I
    .end local v3    # "random":Ljava/util/Random;
    .restart local v2    # "count":I
    :cond_6c
    move v1, v2

    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_60

    :cond_6e
    move v2, v1

    .end local v1    # "count":I
    .restart local v2    # "count":I
    goto :goto_4f
.end method

.method static Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "operator"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy_MM_dd"

    invoke-direct {v7, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 162
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    move-object v0, p0

    .line 163
    .local v0, "carrier":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 164
    .local v5, "manufacturer":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 165
    .local v6, "modelname":Ljava/lang/String;
    const-string/jumbo v9, "ril.modem.board"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "chipset_other_tech":Ljava/lang/String;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 167
    .local v8, "version":Ljava/lang/String;
    const-string v2, "Android"

    .line 168
    .local v2, "deviceclass":Ljava/lang/String;
    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "launched_time":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "full_name":Ljava/lang/String;
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_87

    const-string v9, "GpsXtraDownloader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inject_xtra_user_agent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_87
    return-object v3
.end method


# virtual methods
.method protected doDownload(Ljava/lang/String;)[B
    .registers 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 112
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_1d

    const-string v6, "GpsXtraDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Downloading XTRA data from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1d
    const/4 v1, 0x0

    .line 116
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_1e
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 117
    const-string v6, "Accept"

    const-string v8, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v6, "x-wap-profile"

    const-string/jumbo v8, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v8, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v6, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "secSalesCode":Ljava/lang/String;
    const-string v6, "SPR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "BST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "VMU"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_65

    const-string v6, "XAS"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 128
    :cond_65
    const-string v6, "SPR"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 129
    const-string v3, "Sprint"

    .line 137
    .local v3, "mOperator":Ljava/lang/String;
    :goto_6f
    const-string v6, "User-Agent"

    invoke-static {v3}, Inject_xtra_user_agent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_78
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 142
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 143
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-eq v5, v6, :cond_bf

    .line 144
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_9f

    const-string v6, "GpsXtraDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP error downloading gps XTRA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_9f} :catch_cd
    .catchall {:try_start_1e .. :try_end_9f} :catchall_e0

    .line 152
    :cond_9f
    if-eqz v1, :cond_a4

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a4
    move-object v6, v7

    .line 156
    .end local v4    # "secSalesCode":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :cond_a5
    :goto_a5
    return-object v6

    .line 130
    .restart local v4    # "secSalesCode":Ljava/lang/String;
    :cond_a6
    :try_start_a6
    const-string v6, "BST"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 131
    const-string v3, "Boost"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_6f

    .line 132
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_b1
    const-string v6, "VMU"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 133
    const-string v3, "Virgin"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_6f

    .line 135
    .end local v3    # "mOperator":Ljava/lang/String;
    :cond_bc
    const-string v3, "[MVNO_Partner]"

    .restart local v3    # "mOperator":Ljava/lang/String;
    goto :goto_6f

    .line 148
    .end local v3    # "mOperator":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_bf
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_c6} :catch_cd
    .catchall {:try_start_a6 .. :try_end_c6} :catchall_e0

    move-result-object v6

    .line 152
    if-eqz v1, :cond_a5

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_a5

    .line 149
    .end local v4    # "secSalesCode":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :catch_cd
    move-exception v2

    .line 150
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_ce
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_d9

    const-string v6, "GpsXtraDownloader"

    const-string v8, "Error downloading gps XTRA: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catchall {:try_start_ce .. :try_end_d9} :catchall_e0

    .line 152
    :cond_d9
    if-eqz v1, :cond_de

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_de
    move-object v6, v7

    .line 156
    goto :goto_a5

    .line 152
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_e0
    move-exception v6

    if-eqz v1, :cond_e6

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e6
    throw v6
.end method

.method downloadXtraData()[B
    .registers 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "result":[B
    iget v1, p0, mNextServerIndex:I

    .line 91
    .local v1, "startIndex":I
    iget-object v2, p0, mXtraServers:[Ljava/lang/String;

    if-nez v2, :cond_9

    .line 92
    const/4 v2, 0x0

    .line 108
    :goto_8
    return-object v2

    .line 96
    :cond_9
    if-nez v0, :cond_29

    .line 97
    iget-object v2, p0, mXtraServers:[Ljava/lang/String;

    iget v3, p0, mNextServerIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, doDownload(Ljava/lang/String;)[B

    move-result-object v0

    .line 100
    iget v2, p0, mNextServerIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mNextServerIndex:I

    .line 101
    iget v2, p0, mNextServerIndex:I

    iget-object v3, p0, mXtraServers:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_25

    .line 102
    const/4 v2, 0x0

    iput v2, p0, mNextServerIndex:I

    .line 105
    :cond_25
    iget v2, p0, mNextServerIndex:I

    if-ne v2, v1, :cond_9

    :cond_29
    move-object v2, v0

    .line 108
    goto :goto_8
.end method
