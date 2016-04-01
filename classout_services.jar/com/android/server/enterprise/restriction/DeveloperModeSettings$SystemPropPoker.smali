.class Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 557
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    .line 562
    :try_start_1
    const-string v8, "DeveloperModeSettings"

    const-string v9, "Start System Poker - ServiceManager.listServices()"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_19

    move-result-object v7

    .line 567
    .local v7, "services":[Ljava/lang/String;
    if-eqz v7, :cond_11

    array-length v8, v7

    if-nez v8, :cond_1b

    .line 568
    :cond_11
    const-string v8, "DeveloperModeSettings"

    const-string v9, " System Poker - Failed to get services"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v7    # "services":[Ljava/lang/String;
    :cond_18
    :goto_18
    return-object v11

    .line 564
    :catch_19
    move-exception v2

    .line 565
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_18

    .line 571
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v7    # "services":[Ljava/lang/String;
    :cond_1b
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1e
    if-ge v3, v4, :cond_18

    aget-object v6, v0, v3

    .line 572
    .local v6, "service":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 573
    .local v5, "obj":Landroid/os/IBinder;
    if-eqz v5, :cond_37

    .line 574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 576
    .local v1, "data":Landroid/os/Parcel;
    const v8, 0x5f535052

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_31
    invoke-interface {v5, v8, v1, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_3a

    .line 581
    :goto_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 577
    .restart local v1    # "data":Landroid/os/Parcel;
    :catch_3a
    move-exception v2

    .line 578
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v8, "DeveloperModeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Someone wrote a bad service \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' that doesn\'t like to be poked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method
