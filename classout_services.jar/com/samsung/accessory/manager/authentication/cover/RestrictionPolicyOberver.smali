.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;,
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    }
.end annotation


# static fields
.field static final BLOCKED_BOTH:I = 0x3

.field static final BLOCKED_FELICA:I = 0x2

.field static final BLOCKED_MDM:I = 0x1

.field static final NON_BLOCKED:I

.field private static final TAG:Ljava/lang/String;

.field private static mCr:Landroid/content/ContentResolver;

.field static mIsFelicaAllowed:Z

.field static mIsMdmAllowed:Z

.field private static mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

.field static mPendingFelicaNotification:Z


# instance fields
.field mBootCompleted:Z

.field mContext:Landroid/content/Context;

.field mFelicaReceiver:Landroid/content/BroadcastReceiver;

.field mFelicaReceiverInitialized:Z

.field mNfcAdapter:Landroid/nfc/INfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 26
    const-class v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 39
    sput-boolean v1, mIsFelicaAllowed:Z

    .line 40
    sput-boolean v1, mIsMdmAllowed:Z

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, mPendingFelicaNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, mFelicaReceiverInitialized:Z

    .line 43
    iput-boolean v0, p0, mBootCompleted:Z

    .line 186
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iput-object v0, p0, mFelicaReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, mCr:Landroid/content/ContentResolver;

    .line 120
    invoke-direct {p0}, registerObservers()V

    .line 122
    invoke-static {}, getMdmPolicy()Z

    move-result v0

    sput-boolean v0, mIsMdmAllowed:Z

    .line 123
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 25
    invoke-static {}, getMdmPolicy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    .registers 1

    .prologue
    .line 25
    sget-object v0, mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    .prologue
    .line 25
    invoke-direct {p0}, getNfcAdapter()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 25
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method private buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;
    .registers 2

    .prologue
    .line 136
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    invoke-direct {v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;-><init>()V

    return-object v0
.end method

.method public static getBlockedType()I
    .registers 1

    .prologue
    .line 70
    sget-boolean v0, mIsFelicaAllowed:Z

    if-nez v0, :cond_a

    sget-boolean v0, mIsMdmAllowed:Z

    if-nez v0, :cond_a

    .line 71
    const/4 v0, 0x3

    .line 77
    :goto_9
    return v0

    .line 72
    :cond_a
    sget-boolean v0, mIsFelicaAllowed:Z

    if-nez v0, :cond_10

    .line 73
    const/4 v0, 0x2

    goto :goto_9

    .line 74
    :cond_10
    sget-boolean v0, mIsMdmAllowed:Z

    if-nez v0, :cond_16

    .line 75
    const/4 v0, 0x1

    goto :goto_9

    .line 77
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static declared-synchronized getMdmPolicy()Z
    .registers 11

    .prologue
    .line 89
    const-class v10, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    monitor-enter v10

    const/4 v6, 0x1

    .line 91
    .local v6, "allowed":Z
    :try_start_4
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 92
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, mCr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string/jumbo v3, "isNFCEnabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 95
    .local v8, "restrictionCr":Landroid/database/Cursor;
    if-eqz v8, :cond_33

    .line 96
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_48

    .line 99
    :try_start_1b
    const-string/jumbo v0, "isNFCEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, "result":Ljava/lang/String;
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1b .. :try_end_2c} :catch_40
    .catchall {:try_start_1b .. :try_end_2c} :catchall_4b

    move-result v0

    if-eqz v0, :cond_35

    .line 103
    const/4 v6, 0x1

    .line 110
    :cond_30
    :goto_30
    :try_start_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_48

    .line 114
    .end local v9    # "result":Ljava/lang/String;
    :cond_33
    :goto_33
    monitor-exit v10

    return v6

    .line 104
    .restart local v9    # "result":Ljava/lang/String;
    :cond_35
    :try_start_35
    const-string/jumbo v0, "false"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_35 .. :try_end_3b} :catch_40
    .catchall {:try_start_35 .. :try_end_3b} :catchall_4b

    move-result v0

    if-eqz v0, :cond_30

    .line 105
    const/4 v6, 0x0

    goto :goto_30

    .line 107
    .end local v9    # "result":Ljava/lang/String;
    :catch_40
    move-exception v7

    .line 108
    .local v7, "e":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_41
    invoke-virtual {v7}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4b

    .line 110
    :try_start_44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_33

    .line 89
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    .end local v8    # "restrictionCr":Landroid/database/Cursor;
    :catchall_48
    move-exception v0

    monitor-exit v10

    throw v0

    .line 110
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "restrictionCr":Landroid/database/Cursor;
    :catchall_4b
    move-exception v0

    :try_start_4c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_48
.end method

.method private getNfcAdapter()V
    .registers 2

    .prologue
    .line 159
    const-string/jumbo v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    .line 161
    return-void
.end method

.method public static isAuthenticatonAllowed()Z
    .registers 1

    .prologue
    .line 82
    sget-boolean v0, mIsFelicaAllowed:Z

    if-eqz v0, :cond_a

    sget-boolean v0, mIsMdmAllowed:Z

    if-eqz v0, :cond_a

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private registerObservers()V
    .registers 5

    .prologue
    .line 140
    sget-object v0, mCr:Landroid/content/ContentResolver;

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0}, buildMdmObserver()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    return-void
.end method


# virtual methods
.method public getFelicaPolicy()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-direct {p0}, getNfcAdapter()V

    .line 166
    iget-object v2, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    if-eqz v2, :cond_37

    .line 168
    :try_start_8
    iget-object v2, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v2

    if-ne v2, v4, :cond_13

    .line 169
    const/4 v2, 0x0

    sput-boolean v2, mIsFelicaAllowed:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_2d

    .line 178
    :cond_13
    :goto_13
    iget-boolean v2, p0, mFelicaReceiverInitialized:Z

    if-nez v2, :cond_2c

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mFelicaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    iput-boolean v4, p0, mFelicaReceiverInitialized:Z

    .line 184
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_2c
    return-void

    .line 171
    :catch_2d
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "nfc RemoteException."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 175
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Do not call when nfc service is not ready"

    invoke-static {v2, v3}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public onBootCompleted()V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, mBootCompleted:Z

    .line 133
    return-void
.end method

.method public setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .prologue
    .line 50
    sput-object p1, mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    .line 51
    return-void
.end method

.method public showFelicaNotification()V
    .registers 4

    .prologue
    .line 148
    iget-boolean v1, p0, mBootCompleted:Z

    if-nez v1, :cond_8

    .line 149
    const/4 v1, 0x1

    sput-boolean v1, mPendingFelicaNotification:Z

    .line 156
    :goto_7
    return-void

    .line 151
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.FELICA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.applinker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_7
.end method
