.class public Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KnoxKeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;


# static fields
.field public static final ACTION_CONTAINER_MANUAL_LOCK:Ljava/lang/String; = "samsung.knox.trust.action.CONTAINER_MANUAL_LOCK_INTERNAL"

.field public static final ACTION_GEAR_BONDED_STATE:Ljava/lang/String; = "samsung.knox.trust.action.DEVICE_BONDED_STATE_INTERNAL"

.field public static final ACTION_GEAR_BT_STATE_CHANGE:Ljava/lang/String; = "samsung.knox.trust.action.BT_STATE_CHANGE_INTERNAL"

.field public static final ACTION_GEAR_CONNECTED:Ljava/lang/String; = "samsung.knox.trust.action.DEVICE_CONNECTED_INTERNAL"

.field public static final ACTION_GEAR_DISCONNECTED:Ljava/lang/String; = "samsung.knox.trust.action.DEVICE_DISCONNECTED_INTERNAL"

.field private static final INTENT_PERMISSION_BT_GEAR:Ljava/lang/String; = "com.samsung.android.permission.RECEIVE_BT_GEAR"

.field private static final MSG_ACTIVE_USER_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KnoxKeyguardUpdateMonitor"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/server/pm/PersonaManagerService;

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 48
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 69
    new-instance v0, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor$1;-><init>(Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, mService:Lcom/android/server/pm/PersonaManagerService;

    .line 136
    return-void
.end method

.method private isTrustDisabled(I)Z
    .registers 7
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 171
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 173
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_35

    .line 174
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    .line 176
    .local v0, "disabledByDpm":Z
    :cond_18
    const-string v2, "KnoxKeyguardUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTrustDisabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .end local v0    # "disabledByDpm":Z
    :cond_35
    return v0
.end method


# virtual methods
.method public getUserHasTrust(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 165
    invoke-direct {p0, p1}, isTrustDisabled(I)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x1

    .line 166
    .local v0, "ret":Z
    :goto_f
    const-string v1, "KnoxKeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",trusted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0

    .line 165
    .end local v0    # "ret":Z
    :cond_32
    const/4 v0, 0x0

    goto :goto_f
.end method

.method onBootComplete()V
    .registers 5

    .prologue
    .line 151
    const-string v2, "KnoxKeyguardUpdateMonitor"

    const-string/jumbo v3, "onBootComplete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "trust"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    .line 153
    .local v1, "trustManager":Landroid/app/trust/TrustManager;
    invoke-virtual {v1, p0}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    return-void
.end method

.method public onTrustChanged(ZII)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .prologue
    .line 140
    const-string v0, "KnoxKeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustChanged user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .registers 6
    .param p1, "managed"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 146
    const-string v0, "KnoxKeyguardUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrustManagedChanged user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", managed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 148
    return-void
.end method
