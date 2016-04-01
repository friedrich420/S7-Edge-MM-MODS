.class public final Lcom/kddi/android/qualityinformation/RadioQualityinformation;
.super Ljava/lang/Object;
.source "RadioQualityinformation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioQualityinformation"


# instance fields
.field service:Landroid/net/IConnectivityManager;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v2, 0x0

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 18
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 19
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation const()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_48

    .line 21
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation service != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_24
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getKdiSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 24
    .local v1, "mInfo":Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_48

    .line 25
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRSSNR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_48} :catch_49

    .line 31
    .end local v1    # "mInfo":Landroid/telephony/SignalStrength;
    :cond_48
    :goto_48
    return-void

    .line 27
    :catch_49
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getLteRssnr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48
.end method


# virtual methods
.method public getCQI()I
    .registers 6

    .prologue
    .line 52
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getCQI()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 54
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_5d

    .line 56
    :try_start_17
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getKdiSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 57
    .local v1, "mInfo":Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_5d

    .line 58
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCQI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteCqi()I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3e} :catch_40

    move-result v2

    .line 66
    .end local v1    # "mInfo":Landroid/telephony/SignalStrength;
    :goto_3f
    return v2

    .line 62
    :catch_40
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getCQI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5d
    const v2, 0x7fffffff

    goto :goto_3f
.end method

.method public getPacketCount()J
    .registers 6

    .prologue
    .line 70
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 72
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_6a

    .line 74
    :try_start_17
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getKdiLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v1

    .line 75
    .local v1, "mInfo":Landroid/net/LinkQualityInfo;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPacketCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz v1, :cond_43

    .line 77
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketCount() mInfo != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Landroid/net/LinkQualityInfo;->getPacketCount()J

    move-result-wide v2

    .line 89
    .end local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :goto_42
    return-wide v2

    .line 81
    .restart local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :cond_43
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketCount() mInfo == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4a} :catch_4d

    .line 82
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_42

    .line 85
    .end local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :catch_4d
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getPacketCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6a
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_42
.end method

.method public getPacketErrorCount()J
    .registers 6

    .prologue
    .line 93
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketErrorCount()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 95
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_6a

    .line 97
    :try_start_17
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getKdiLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v1

    .line 98
    .local v1, "mInfo":Landroid/net/LinkQualityInfo;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPacketErrorCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-eqz v1, :cond_43

    .line 100
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketCount() mInfo != null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {v1}, Landroid/net/LinkQualityInfo;->getPacketErrorCount()J

    move-result-wide v2

    .line 112
    .end local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :goto_42
    return-wide v2

    .line 104
    .restart local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :cond_43
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getPacketCount() mInfo == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4a} :catch_4d

    .line 105
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_42

    .line 108
    .end local v1    # "mInfo":Landroid/net/LinkQualityInfo;
    :catch_4d
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getPacketErrorCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6a
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_42
.end method

.method public getRSSNR()I
    .registers 6

    .prologue
    .line 34
    const-string v2, "RadioQualityinformation"

    const-string v3, "RadioQualityinformation getRSSNR()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    iput-object v2, p0, service:Landroid/net/IConnectivityManager;

    .line 36
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    if-eqz v2, :cond_5d

    .line 38
    :try_start_17
    iget-object v2, p0, service:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getKdiSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 39
    .local v1, "mInfo":Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_5d

    .line 40
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRSSNR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteRssnr()I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3e} :catch_40

    move-result v2

    .line 48
    .end local v1    # "mInfo":Landroid/telephony/SignalStrength;
    :goto_3f
    return v2

    .line 44
    :catch_40
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RadioQualityinformation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getRSSNR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5d
    const v2, 0x7fffffff

    goto :goto_3f
.end method
