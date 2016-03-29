.class public Lcom/android/systemui/keyboard/KeyboardUI;
.super Lcom/android/systemui/SystemUI;
.source "KeyboardUI.java"

# interfaces
.implements Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyboard/KeyboardUI$1;,
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;,
        Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;,
        Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
    }
.end annotation


# instance fields
.field private mBootCompleted:Z

.field private mBootCompletedTime:J

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field protected volatile mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

.field private mEnabled:Z

.field private volatile mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

.field private mInTabletMode:I

.field private mKeyboardName:Ljava/lang/String;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mState:I

.field private volatile mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 524
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceAddedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->onBleScanFailedInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/systemui/keyboard/BluetoothDialog;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->init()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/keyboard/KeyboardUI;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/keyboard/KeyboardUI;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI;->onBluetoothStateChangedInternal(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p1, "x1"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI;->onDeviceBondStateChangedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method private getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4
    .param p1, "d"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 314
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 318
    :cond_0
    return-object v0
.end method

.method private getDiscoveredKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .prologue
    .line 302
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 303
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 304
    .local v0, "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    .end local v0    # "d":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPairedKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 5

    .prologue
    .line 292
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 293
    .local v1, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 294
    .local v0, "d":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcom/android/systemui/keyboard/KeyboardUI;->getCachedBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 298
    .end local v0    # "d":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 162
    .local v1, "context":Landroid/content/Context;
    const v3, 0x1040059

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    .line 164
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {v1, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 172
    .local v0, "bluetoothManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-eqz v0, :cond_0

    .line 178
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    .line 179
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 180
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 181
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 182
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 184
    const-string v3, "input"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    .line 185
    .local v2, "im":Landroid/hardware/input/InputManager;
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v2, p0, v3}, Landroid/hardware/input/InputManager;->registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 186
    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->isInTabletMode()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 189
    new-instance v3, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    invoke-direct {v3, p0}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    goto :goto_0
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 286
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onBleScanFailedInternal()V
    .locals 2

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 369
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 370
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 372
    :cond_0
    return-void
.end method

.method private onBluetoothStateChangedInternal(I)V
    .locals 2
    .param p1, "bluetoothState"    # I

    .prologue
    .line 352
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 355
    :cond_0
    return-void
.end method

.method private onDeviceAddedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .param p1, "d"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 343
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 345
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 346
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 348
    :cond_0
    return-void
.end method

.method private onDeviceBondStateChangedInternal(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "d"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 362
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 364
    :cond_0
    return-void
.end method

.method private processKeyboardState()V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 194
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v2, v5}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->removeMessages(I)V

    .line 196
    iget-boolean v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    if-nez v2, :cond_0

    .line 197
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 258
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    if-nez v2, :cond_1

    .line 202
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto :goto_0

    .line 206
    :cond_1
    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-eqz v2, :cond_3

    .line 207
    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v2, v6, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->stopScanning()V

    .line 210
    :cond_2
    iput v5, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto :goto_0

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 215
    .local v0, "btState":I
    if-eq v0, v7, :cond_4

    if-ne v0, v8, :cond_5

    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v2, v4, :cond_5

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->sendEmptyMessage(I)Z

    .line 222
    :cond_5
    if-ne v0, v7, :cond_6

    .line 223
    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    goto :goto_0

    .line 228
    :cond_6
    if-eq v0, v8, :cond_7

    .line 229
    iput v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->showBluetoothDialog()V

    goto :goto_0

    .line 234
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->getPairedKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 235
    .local v1, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-eq v2, v5, :cond_8

    iget v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v2, v4, :cond_a

    .line 236
    :cond_8
    if-eqz v1, :cond_9

    .line 243
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 247
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 250
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->getDiscoveredKeyboard()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_b

    .line 252
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 253
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    goto :goto_0

    .line 255
    :cond_b
    iput v6, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->startScanning()V

    goto :goto_0
.end method

.method private showBluetoothDialog()V
    .locals 8

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 273
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    const-wide/16 v6, 0x2710

    add-long v0, v4, v6

    .line 274
    .local v0, "earliestDialogTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mUIHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->sendEmptyMessage(I)Z

    .line 283
    .end local v0    # "earliestDialogTime":J
    .end local v2    # "now":J
    :goto_0
    return-void

    .line 277
    .restart local v0    # "earliestDialogTime":J
    .restart local v2    # "now":J
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    .line 281
    .end local v0    # "earliestDialogTime":J
    .end local v2    # "now":J
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    goto :goto_0
.end method

.method private startScanning()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 322
    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 323
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    new-instance v3, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    .line 324
    .local v0, "filter":Landroid/bluetooth/le/ScanFilter;
    new-instance v3, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    invoke-virtual {v3, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 330
    .local v2, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v3, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardScanCallback;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    iput-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 331
    new-array v3, v6, [Landroid/bluetooth/le/ScanFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v3, v2, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 332
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 550
    packed-switch p0, :pswitch_data_0

    .line 573
    :pswitch_0
    const-string v0, "STATE_UNKNOWN"

    :goto_0
    return-object v0

    .line 552
    :pswitch_1
    const-string v0, "STATE_NOT_ENABLED"

    goto :goto_0

    .line 554
    :pswitch_2
    const-string v0, "STATE_WAITING_FOR_BOOT_COMPLETED"

    goto :goto_0

    .line 556
    :pswitch_3
    const-string v0, "STATE_WAITING_FOR_TABLET_MODE_EXIT"

    goto :goto_0

    .line 558
    :pswitch_4
    const-string v0, "STATE_WAITING_FOR_DEVICE_DISCOVERY"

    goto :goto_0

    .line 560
    :pswitch_5
    const-string v0, "STATE_WAITING_FOR_BLUETOOTH"

    goto :goto_0

    .line 562
    :pswitch_6
    const-string v0, "STATE_WAITING_FOR_STATE_PAIRED"

    goto :goto_0

    .line 564
    :pswitch_7
    const-string v0, "STATE_PAIRING"

    goto :goto_0

    .line 566
    :pswitch_8
    const-string v0, "STATE_PAIRED"

    goto :goto_0

    .line 568
    :pswitch_9
    const-string v0, "STATE_USER_CANCELLED"

    goto :goto_0

    .line 570
    :pswitch_a
    const-string v0, "STATE_DEVICE_NOT_FOUND"

    goto :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private stopScanning()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mScanCallback:Landroid/bluetooth/le/ScanCallback;

    .line 339
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, "KeyboardUI:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBootCompletedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mKeyboardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mKeyboardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInTabletMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    invoke-static {v1}, Lcom/android/systemui/keyboard/KeyboardUI;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method protected onBootCompleted()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public onBootCompletedInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 262
    iput-boolean v2, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompleted:Z

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mBootCompletedTime:J

    .line 264
    iget v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mState:I

    if-ne v0, v2, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 267
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 127
    return-void
.end method

.method public onTabletModeChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 151
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    if-nez p3, :cond_2

    iget v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    if-eqz v1, :cond_2

    .line 153
    :cond_1
    if-eqz p3, :cond_3

    :goto_0
    iput v0, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mInTabletMode:I

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/keyboard/KeyboardUI;->processKeyboardState()V

    .line 157
    :cond_2
    return-void

    .line 153
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Keyboard"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 120
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->sendEmptyMessage(I)Z

    .line 123
    return-void
.end method
