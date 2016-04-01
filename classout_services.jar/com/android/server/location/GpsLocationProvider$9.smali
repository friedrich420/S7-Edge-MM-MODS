.class Lcom/android/server/location/GpsLocationProvider$9;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 2

    .prologue
    .line 948
    iput-object p1, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 951
    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    .line 952
    .local v1, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 953
    .local v0, "data":[B
    if-eqz v0, :cond_2c

    .line 955
    const-string v2, "GpsLocationProvider"

    const-string v3, "calling native_inject_xtra_data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v2}, Lcom/android/server/location/GpsLocationProvider;->extension_set_xtra_downloaded_time()V

    .line 962
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    array-length v3, v0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V
    invoke-static {v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->access$2600(Lcom/android/server/location/GpsLocationProvider;[BI)V

    .line 963
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GpsLocationProvider$BackOff;->reset()V

    .line 966
    :cond_2c
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 968
    if-nez v0, :cond_4b

    .line 971
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mXtraBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;
    invoke-static {v4}, Lcom/android/server/location/GpsLocationProvider;->access$2700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GpsLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 976
    :cond_4b
    iget-object v2, p0, this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 977
    return-void
.end method
