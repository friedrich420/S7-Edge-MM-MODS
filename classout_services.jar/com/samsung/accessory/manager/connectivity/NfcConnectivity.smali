.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;,
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final ACTION_NFC_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGED"

.field private static final EXTRA_STATE:Ljava/lang/String; = "android.nfc.extra.ADAPTER_STATE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field private mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mNfcAdapter:Landroid/nfc/INfcAdapter;

.field private mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

.field private mPrevState:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 100
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 40
    iput v1, p0, mState:I

    .line 42
    iput v1, p0, mPrevState:I

    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    invoke-direct {p0}, getNfcAdapter()V

    .line 102
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V

    iput-object v1, p0, mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    .line 103
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-direct {v1, p0, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$1;)V

    iput-object v1, p0, mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    .prologue
    .line 22
    iget-object v0, p0, mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    .prologue
    .line 22
    iget-object v0, p0, mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, sendStateChanged(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    .prologue
    .line 22
    iget v0, p0, mPrevState:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, mPrevState:I

    return p1
.end method

.method private disableInternal()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 198
    invoke-direct {p0}, getNfcState()I

    move-result v0

    .line 200
    .local v0, "currentState":I
    iget v7, p0, mPrevState:I

    if-ne v7, v0, :cond_b

    .line 238
    :goto_a
    return v6

    .line 202
    :cond_b
    const/4 v2, 0x0

    .line 207
    .local v2, "ret":Z
    :try_start_c
    iget v7, p0, mPrevState:I

    sparse-switch v7, :sswitch_data_64

    .line 218
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disableInternal : can\'t disable currentState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v2, 0x0

    :goto_2b
    move v6, v2

    .line 238
    goto :goto_a

    .line 209
    :sswitch_2d
    iget-object v5, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v2

    .line 210
    goto :goto_2b

    .line 213
    :sswitch_35
    iget-object v7, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v3

    .line 214
    .local v3, "ret1":Z
    iget-object v7, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v7}, Landroid/nfc/INfcAdapter;->readerDisable()Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_40} :catch_49

    move-result v4

    .line 215
    .local v4, "ret2":Z
    if-eqz v3, :cond_47

    if-eqz v4, :cond_47

    move v2, v5

    .line 216
    :goto_46
    goto :goto_2b

    :cond_47
    move v2, v6

    .line 215
    goto :goto_46

    .line 234
    .end local v3    # "ret1":Z
    .end local v4    # "ret2":Z
    :catch_49
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disableInternal :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 207
    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_2d
        0x5 -> :sswitch_35
    .end sparse-switch
.end method

.method private enableInternal(Z)Z
    .registers 8
    .param p1, "saveState"    # Z

    .prologue
    .line 151
    invoke-direct {p0}, getNfcState()I

    move-result v0

    .line 152
    .local v0, "currentState":I
    const/4 v2, 0x1

    .line 156
    .local v2, "ret":Z
    sparse-switch v0, :sswitch_data_52

    .line 164
    :try_start_8
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableInternal : can\'t enable currentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_21} :catch_37

    .line 165
    const/4 v2, 0x0

    .line 184
    :goto_22
    if-eqz v2, :cond_28

    if-eqz p1, :cond_28

    .line 185
    iput v0, p0, mPrevState:I

    .line 187
    :cond_28
    return v2

    .line 158
    :sswitch_29
    :try_start_29
    iget-object v3, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v2

    .line 159
    goto :goto_22

    .line 161
    :sswitch_30
    iget-object v3, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->readerEnable()Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_37

    move-result v2

    .line 162
    goto :goto_22

    .line 180
    :catch_37
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableInternal :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 156
    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_29
        0x5 -> :sswitch_30
    .end sparse-switch
.end method

.method private declared-synchronized getNfcAdapter()V
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNfcState()I
    .registers 8

    .prologue
    .line 289
    const/4 v3, -0x1

    .line 290
    .local v3, "retVal":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/16 v4, 0xa

    if-ge v2, v4, :cond_c

    .line 293
    :try_start_6
    iget-object v4, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_d

    move-result v3

    .line 307
    .end local v3    # "retVal":I
    :cond_c
    return v3

    .line 297
    .restart local v3    # "retVal":I
    :catch_d
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNfcState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-wide/16 v4, 0xc8

    :try_start_29
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2c
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2c} :catch_32

    .line 304
    :goto_2c
    invoke-direct {p0}, getNfcAdapter()V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 301
    :catch_32
    move-exception v1

    .line 302
    .local v1, "ee":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2c
.end method

.method private sendStateChanged(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 95
    iget-object v0, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 97
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 281
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    if-eqz v0, :cond_15

    .line 283
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    .line 286
    :cond_15
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 242
    iget-object v0, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_a

    .line 243
    iget-object v0, p0, mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    .line 245
    :cond_a
    return v1
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 191
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    invoke-direct {p0}, disableInternal()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 312
    const-string v0, " Current NfcConnectivity state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrevState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mPrevState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public enable()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 131
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, v0}, enableInternal(Z)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 134
    iget-object v1, p0, mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    iput-boolean v0, p0, mEnabledInternal:Z

    .line 138
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 142
    invoke-direct {p0}, getNfcState()I

    move-result v0

    .line 144
    .local v0, "state":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    .line 145
    :cond_b
    const/4 v1, 0x1

    .line 147
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public sendStartAuth()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->startCoverAuth()[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 259
    :goto_6
    return-object v1

    .line 256
    :catch_7
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 259
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendStopAuth()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->stopCoverAuth()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 268
    :goto_6
    return v1

    .line 265
    :catch_7
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public sendSync([B)[B
    .registers 5
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSync, payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object p1
.end method

.method public sendSynchronously([B)[B
    .registers 4
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->transceiveAuthData([B)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 277
    :goto_6
    return-object v1

    .line 274
    :catch_7
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 277
    const/4 v1, 0x0

    goto :goto_6
.end method
