.class Lcom/sec/epdg/EpdgService$WifiCallHandover;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiCallHandover"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mDelay:I

.field mFeature:Ljava/lang/String;

.field mIntent:Landroid/app/PendingIntent;

.field mIsL2W:Z

.field mNetworkType:I

.field mRetryCount:I

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .registers 11
    .param p2, "isL2W"    # Z
    .param p3, "retrycount"    # I
    .param p4, "networkType"    # I
    .param p5, "feature"    # Ljava/lang/String;
    .param p6, "binder"    # Landroid/os/IBinder;
    .param p7, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3710
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3701
    iput-boolean v1, p0, mIsL2W:Z

    .line 3702
    iput v1, p0, mNetworkType:I

    .line 3703
    const-string v0, ""

    iput-object v0, p0, mFeature:Ljava/lang/String;

    .line 3704
    iput-object v2, p0, mBinder:Landroid/os/IBinder;

    .line 3705
    iput-object v2, p0, mIntent:Landroid/app/PendingIntent;

    .line 3706
    iput v1, p0, mRetryCount:I

    .line 3707
    const/16 v0, 0xa

    iput v0, p0, mDelay:I

    .line 3711
    iput-boolean p2, p0, mIsL2W:Z

    .line 3712
    iput p4, p0, mNetworkType:I

    .line 3713
    iput-object p5, p0, mFeature:Ljava/lang/String;

    .line 3714
    iput-object p6, p0, mBinder:Landroid/os/IBinder;

    .line 3715
    iput-object p7, p0, mIntent:Landroid/app/PendingIntent;

    .line 3716
    iput p3, p0, mRetryCount:I

    .line 3717
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 3721
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiCallHandover value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsL2W:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRetryCount is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    :try_start_35
    iget-boolean v0, p0, mIsL2W:Z

    if-eqz v0, :cond_94

    .line 3725
    const/4 v0, 0x1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    if-ne v0, v1, :cond_6c

    iget v0, p0, mRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6c

    .line 3727
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1200()Landroid/os/Handler;

    move-result-object v9

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    iget-object v1, p0, this$0:Lcom/sec/epdg/EpdgService;

    iget-boolean v2, p0, mIsL2W:Z

    iget v3, p0, mRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mRetryCount:I

    iget v4, p0, mNetworkType:I

    iget-object v5, p0, mFeature:Ljava/lang/String;

    iget-object v6, p0, mBinder:Landroid/os/IBinder;

    iget-object v7, p0, mIntent:Landroid/app/PendingIntent;

    invoke-direct/range {v0 .. v7}, <init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    iget v1, p0, mDelay:I

    int-to-long v2, v1

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3738
    :goto_6b
    return-void

    .line 3730
    :cond_6c
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    iget v1, p0, mNetworkType:I

    iget-object v2, p0, mFeature:Ljava/lang/String;

    iget-object v3, p0, mBinder:Landroid/os/IBinder;

    iget-object v4, p0, mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgService;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_79} :catch_7a

    goto :goto_6b

    .line 3735
    :catch_7a
    move-exception v8

    .line 3736
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not WifiCallHandover "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 3733
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_94
    :try_start_94
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    iget v1, p0, mNetworkType:I

    iget-object v2, p0, mFeature:Ljava/lang/String;

    iget-object v3, p0, mBinder:Landroid/os/IBinder;

    iget-object v4, p0, mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_a1} :catch_7a

    goto :goto_6b
.end method
