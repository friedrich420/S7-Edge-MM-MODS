.class public Lcom/samsung/android/magazinecard/MagazineCardManager;
.super Ljava/lang/Object;
.source "MagazineCardManager.java"


# static fields
.field private static KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentUserID:I


# instance fields
.field private mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "MagazineCardManager"

    sput-object v0, TAG:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "sec_container_"

    sput-object v0, KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 68
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "MagazineCardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sput-object p1, mContext:Landroid/content/Context;

    .line 71
    sget-object v0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    sput v0, mCurrentUserID:I

    .line 72
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 73
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_8

    .line 106
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_8
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_17

    .line 111
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 113
    :goto_16
    return-object v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_b

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_a
    return-object v0

    .line 98
    :cond_b
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v1, mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_a
.end method

.method private declared-synchronized getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;
    .registers 3

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_1d

    .line 77
    const-string/jumbo v0, "magazinecardservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 78
    iget-object v0, p0, mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_1d

    .line 79
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1d
    iget-object v0, p0, mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 76
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKnoxApp()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 122
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_12

    sget-object v2, KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_12

    .line 126
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .registers 6
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 87
    iget-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    .line 90
    :cond_e
    return-void
.end method


# virtual methods
.method public addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 10
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 132
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_45

    .line 136
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v3, 0x0

    .line 154
    :cond_44
    :goto_44
    return v3

    .line 141
    :cond_45
    :try_start_45
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 142
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_44

    .line 143
    invoke-direct {p0, p1}, setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 145
    const/4 v4, 0x0

    invoke-direct {p0, v4}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 147
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, mCurrentUserID:I

    iput v4, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 148
    sget v4, mCurrentUserID:I

    invoke-interface {v2, v4, v0, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5c} :catch_5d

    goto :goto_44

    .line 150
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_5d
    move-exception v1

    .line 152
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .registers 8
    .param p1, "cardRecordId"    # I

    .prologue
    const/4 v2, 0x0

    .line 299
    :try_start_1
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 301
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_32

    .line 302
    invoke-interface {v1, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_33

    move-result-object v2

    .line 308
    :cond_32
    return-object v2

    .line 304
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_33
    move-exception v0

    .line 306
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCardRecordIdList(IZ)[I
    .registers 9
    .param p1, "userId"    # I
    .param p2, "securityMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardRecordIdList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, mCurrentUserID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ReqU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :try_start_3d
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 284
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_47

    .line 285
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCardRecordIdList(IZ)[I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_46} :catch_48

    move-result-object v2

    .line 291
    :cond_47
    return-object v2

    .line 287
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_48
    move-exception v0

    .line 289
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isCardExist(I)Z
    .registers 3
    .param p1, "cardId"    # I

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, isCardExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isCardExist(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x0

    .line 252
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCardExist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-direct {p0}, isKnoxApp()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_42

    .line 256
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "isCardExist : KNOX application cannot use magazine card service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_41
    :goto_41
    return v3

    .line 262
    :cond_42
    :try_start_42
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 263
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_41

    .line 264
    invoke-direct {p0, p1}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 265
    .local v0, "component":Landroid/content/ComponentName;
    sget v3, mCurrentUserID:I

    invoke-interface {v2, v3, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->isCardExist(ILandroid/content/ComponentName;I)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_53

    move-result v3

    goto :goto_41

    .line 267
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_53
    move-exception v1

    .line 269
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isServiceEnabled()Z
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, isKnoxApp()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public removeAllCard()Z
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, removeAllCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAllCard(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 219
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-direct {p0}, isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_3a

    .line 223
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v3, 0x0

    .line 244
    :cond_39
    :goto_39
    return v3

    .line 228
    :cond_3a
    :try_start_3a
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 229
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_39

    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_57

    .line 233
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v4, ""

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_4a
    sget v4, mCurrentUserID:I

    invoke-interface {v2, v4, v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeAllCard(ILandroid/content/ComponentName;)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_4f} :catch_50

    goto :goto_39

    .line 239
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_50
    move-exception v1

    .line 241
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 235
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :cond_57
    :try_start_57
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v4, mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_60} :catch_50

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_4a
.end method

.method public removeCard(I)Z
    .registers 3
    .param p1, "cardId"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, removeCard(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeCard(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x1

    .line 192
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_44

    .line 196
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v3, 0x0

    .line 211
    :cond_43
    :goto_43
    return v3

    .line 201
    :cond_44
    :try_start_44
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 202
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_43

    .line 203
    invoke-direct {p0, p1}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 204
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeCard(ILandroid/content/ComponentName;I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_53} :catch_54

    goto :goto_43

    .line 206
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_54
    move-exception v1

    .line 208
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 3
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    move-result v0

    return v0
.end method

.method public updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v3, 0x1

    .line 163
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_46

    .line 167
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, 0x0

    .line 184
    :cond_45
    :goto_45
    return v3

    .line 173
    :cond_46
    :try_start_46
    invoke-direct {p0}, getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 174
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_45

    .line 175
    invoke-direct {p0, p1}, getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, mCurrentUserID:I

    iput v4, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 178
    sget v4, mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_59} :catch_5a

    goto :goto_45

    .line 180
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_5a
    move-exception v1

    .line 182
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
