.class public Lcom/android/settings/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCurrentTethers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTypeIndex:I

.field private mEnableWifiAfterCheck:Z

.field private mInProvisionCheck:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 267
    new-instance v0, Lcom/android/settings/TetherService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherService$2;-><init>(Lcom/android/settings/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/settings/TetherService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/TetherService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/TetherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic access$204(Lcom/android/settings/TetherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/TetherService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/TetherService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/TetherService;->enableWifiTetheringIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/TetherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableWifiTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/TetherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableBtTethering()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/TetherService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/TetherService;->disableUsbTethering()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/TetherService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    return-void
.end method

.method private cancelAlarmIfNecessary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "TetherService"

    const-string v4, "Tethering still active, not cancelling alarm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/TetherService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 262
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 263
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 264
    sget-boolean v3, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "TetherService"

    const-string v4, "Tethering no longer active, canceling recheck"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraRemTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 253
    return-void
.end method

.method private disableBtTethering()V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 194
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Lcom/android/settings/TetherService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/TetherService$1;-><init>(Lcom/android/settings/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 206
    :cond_0
    return-void
.end method

.method private disableUsbTethering()V
    .locals 2

    .prologue
    .line 187
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    .line 190
    return-void
.end method

.method private disableWifiTethering()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 184
    return-void
.end method

.method private enableWifiTetheringIfNeeded()V
    .locals 1

    .prologue
    .line 177
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isWifiTetherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/settingslib/TetherUtil;->setWifiTethering(ZLandroid/content/Context;)Z

    .line 180
    :cond_0
    return-void
.end method

.method private scheduleAlarm()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 230
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "extraRunProvision"

    const/4 v9, 0x1

    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 233
    invoke-static {p0, v10, v7, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 234
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 235
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x10e000f

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 237
    .local v8, "period":I
    const v1, 0x36ee80

    mul-int/2addr v1, v8

    int-to-long v4, v1

    .line 238
    .local v4, "periodMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long v2, v10, v4

    .line 239
    .local v2, "firstTime":J
    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TetherService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scheduling alarm at interval "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 242
    return-void
.end method

.method public static scheduleRecheckAlarm(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v1, "extraSetAlarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    return-void
.end method

.method private startProvisioning(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 209
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "provisionAction":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending provisioning broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "TETHER_TYPE"

    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/settings/TetherService;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    .line 220
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "provisionAction":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "tethersStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    return-object v1

    .line 156
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "tethersSplit":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 158
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "tethers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 167
    if-eqz v2, :cond_0

    .line 168
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 72
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    const-string v3, "Creating TetherService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "provisionResponse":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/TetherService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    const-string v2, "tetherPrefs"

    invoke-virtual {p0, v2, v6}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "currentTethers"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 79
    iput v6, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "TetherService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    const-string v1, "tetherPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/TetherService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "currentTethers"

    iget-object v3, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/settings/TetherService;->tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    sget-boolean v1, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TetherService"

    const-string v2, "Destroying TetherService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 84
    const-string v2, "extraAddTetherType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string v2, "extraAddTetherType"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "type":I
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .end local v1    # "type":I
    :cond_1
    const-string v2, "extraRemTetherType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    iget-boolean v2, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-nez v2, :cond_9

    .line 95
    const-string v2, "extraRemTetherType"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .restart local v1    # "type":I
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "index":I
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing tether "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    if-ltz v0, :cond_4

    .line 100
    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 103
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentTypeIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_3
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-gt v0, v2, :cond_4

    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    if-lez v2, :cond_4

    .line 105
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/TetherService;->cancelAlarmIfNecessary()V

    .line 117
    .end local v0    # "index":I
    .end local v1    # "type":I
    :cond_5
    :goto_0
    const-string v2, "extraSetAlarm"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 119
    invoke-direct {p0}, Lcom/android/settings/TetherService;->scheduleAlarm()V

    .line 122
    :cond_6
    const-string v2, "extraEnableWifiTether"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    iput-boolean v7, p0, Lcom/android/settings/TetherService;->mEnableWifiAfterCheck:Z

    .line 126
    :cond_7
    const-string v2, "extraRunProvision"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 127
    iget v2, p0, Lcom/android/settings/TetherService;->mCurrentTypeIndex:I

    invoke-direct {p0, v2}, Lcom/android/settings/TetherService;->startProvisioning(I)V

    .line 135
    :cond_8
    const/4 v2, 0x3

    :goto_1
    return v2

    .line 110
    :cond_9
    sget-boolean v2, Lcom/android/settings/TetherService;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "TetherService"

    const-string v3, "Don\'t cancel alarm during provisioning"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_a
    iget-boolean v2, p0, Lcom/android/settings/TetherService;->mInProvisionCheck:Z

    if-nez v2, :cond_8

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/TetherService;->stopSelf()V

    .line 131
    const/4 v2, 0x2

    goto :goto_1
.end method
