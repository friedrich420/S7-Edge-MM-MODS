.class public Lcom/android/server/location/LocationBasedCountryDetector;
.super Lcom/android/server/location/CountryDetectorBase;
.source "LocationBasedCountryDetector.java"


# static fields
.field private static final QUERY_LOCATION_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "LocationBasedCountryDetector"


# instance fields
.field private mEnabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLocationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mQueryThread:Ljava/lang/Thread;

.field protected mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/location/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 69
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationBasedCountryDetector;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 49
    invoke-direct {p0, p1}, queryCountryCode(Landroid/location/Location;)V

    return-void
.end method

.method private declared-synchronized queryCountryCode(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 238
    monitor-enter p0

    if-nez p1, :cond_9

    .line 239
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, notifyListener(Landroid/location/Country;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1f

    .line 260
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 242
    :cond_9
    :try_start_9
    iget-object v0, p0, mQueryThread:Ljava/lang/Thread;

    if-nez v0, :cond_7

    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/LocationBasedCountryDetector$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/LocationBasedCountryDetector$3;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, mQueryThread:Ljava/lang/Thread;

    .line 259
    iget-object v0, p0, mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1f

    goto :goto_7

    .line 238
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized detectCountry()Landroid/location/Country;
    .registers 11

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, mLocationListeners:Ljava/util/List;

    if-eqz v5, :cond_e

    .line 166
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    .line 165
    :catchall_b
    move-exception v5

    monitor-exit p0

    throw v5

    .line 169
    :cond_e
    :try_start_e
    invoke-virtual {p0}, getEnabledProviders()Ljava/util/List;

    move-result-object v0

    .line 170
    .local v0, "enabledProviders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 171
    .local v4, "totalProviders":I
    if-lez v4, :cond_57

    .line 172
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, mLocationListeners:Ljava/util/List;

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v4, :cond_3e

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p0, v3}, isAcceptableProvider(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 176
    new-instance v2, Lcom/android/server/location/LocationBasedCountryDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/location/LocationBasedCountryDetector$1;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    .line 194
    .local v2, "listener":Landroid/location/LocationListener;
    iget-object v5, p0, mLocationListeners:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0, v3, v2}, registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V

    .line 173
    .end local v2    # "listener":Landroid/location/LocationListener;
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 199
    .end local v3    # "provider":Ljava/lang/String;
    :cond_3e
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, p0, mTimer:Ljava/util/Timer;

    .line 200
    iget-object v5, p0, mTimer:Ljava/util/Timer;

    new-instance v6, Lcom/android/server/location/LocationBasedCountryDetector$2;

    invoke-direct {v6, p0}, Lcom/android/server/location/LocationBasedCountryDetector$2;-><init>(Lcom/android/server/location/LocationBasedCountryDetector;)V

    invoke-virtual {p0}, getQueryLocationTimeout()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 214
    .end local v1    # "i":I
    :goto_53
    iget-object v5, p0, mDetectedCountry:Landroid/location/Country;
    :try_end_55
    .catchall {:try_start_e .. :try_end_55} :catchall_b

    monitor-exit p0

    return-object v5

    .line 212
    :cond_57
    :try_start_57
    invoke-virtual {p0}, getLastKnownLocation()Landroid/location/Location;

    move-result-object v5

    invoke-direct {p0, v5}, queryCountryCode(Landroid/location/Location;)V
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_b

    goto :goto_53
.end method

.method protected getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;
    .registers 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 76
    const/4 v7, 0x0

    .line 77
    .local v7, "country":Ljava/lang/String;
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "geoCoder":Landroid/location/Geocoder;
    :try_start_8
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 82
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_29

    move-result-object v7

    .line 87
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_28
    :goto_28
    return-object v7

    .line 84
    :catch_29
    move-exception v8

    .line 85
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "LocationBasedCountryDetector"

    const-string v3, "Exception occurs when getting country from location"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method protected getEnabledProviders()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, mEnabledProviders:Ljava/util/List;

    if-nez v0, :cond_d

    .line 152
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mEnabledProviders:Ljava/util/List;

    .line 154
    :cond_d
    iget-object v0, p0, mEnabledProviders:Ljava/util/List;

    return-object v0
.end method

.method protected getLastKnownLocation()Landroid/location/Location;
    .registers 13

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 125
    .local v2, "bid":J
    :try_start_4
    iget-object v7, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v6

    .line 126
    .local v6, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "bestLocation":Landroid/location/Location;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 128
    .local v5, "provider":Ljava/lang/String;
    iget-object v7, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 129
    .local v4, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_f

    .line 130
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v8

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_37

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_f

    .line 133
    :cond_31
    move-object v0, v4

    goto :goto_f

    .line 139
    .end local v4    # "lastKnownLocation":Landroid/location/Location;
    .end local v5    # "provider":Ljava/lang/String;
    :cond_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .end local v0    # "bestLocation":Landroid/location/Location;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_37
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method protected getQueryLocationTimeout()J
    .registers 3

    .prologue
    .line 147
    const-wide/32 v0, 0x493e0

    return-wide v0
.end method

.method protected isAcceptableProvider(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 92
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected registerListener(Ljava/lang/String;Landroid/location/LocationListener;)V
    .registers 11
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 101
    .local v6, "bid":J
    :try_start_4
    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 103
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    return-void

    .line 103
    :catchall_12
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mLocationListeners:Ljava/util/List;

    if-eqz v2, :cond_21

    .line 223
    iget-object v2, p0, mLocationListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationListener;

    .line 224
    .local v1, "listener":Landroid/location/LocationListener;
    invoke-virtual {p0, v1}, unregisterListener(Landroid/location/LocationListener;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 222
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/location/LocationListener;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 226
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1e
    const/4 v2, 0x0

    :try_start_1f
    iput-object v2, p0, mLocationListeners:Ljava/util/List;

    .line 228
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_21
    iget-object v2, p0, mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2d

    .line 229
    iget-object v2, p0, mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 230
    const/4 v2, 0x0

    iput-object v2, p0, mTimer:Ljava/util/Timer;
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_1b

    .line 232
    :cond_2d
    monitor-exit p0

    return-void
.end method

.method protected unregisterListener(Landroid/location/LocationListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    .local v0, "bid":J
    :try_start_4
    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    return-void

    .line 115
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
