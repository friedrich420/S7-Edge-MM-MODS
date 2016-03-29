.class public Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"


# static fields
.field private static final DEBUG:Z

.field private static VOWIFI_PACKAGE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQSDatabaseUtils:Lcom/android/systemui/qs/QSDatabaseUtils;

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Landroid/app/StatusBarManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    .line 132
    const-string v0, "com.oem.smartwifisupport"

    sput-object v0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.sec.sprint.wfc.VOWIFI_STATUS"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    .line 88
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vowifi"

    const v4, 0x7f0205ea

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v3, "vowifi"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 91
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->handleVoWifi()V

    .line 95
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "VoWiFiController"

    const-string v3, "VoWiFiStatusController created!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->handleVoWifi()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWifiIfNeeded()V

    return-void
.end method

.method private addVoWifiApp(Ljava/lang/String;)V
    .locals 13
    .param p1, "nameList"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 168
    .local v9, "res":Landroid/content/res/Resources;
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 169
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v10, -0x2

    invoke-static {v3, p1, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "appList":Ljava/lang/String;
    const-string v10, "VoWiFiController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appList is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v1, :cond_0

    const-string v10, "WifiCalling"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 197
    .end local v1    # "appList":Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 172
    .restart local v1    # "appList":Ljava/lang/String;
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    :cond_0
    if-nez v1, :cond_2

    .line 173
    const v10, 0x7f0d0183

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v10, "VoWiFiController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mQSDatabaseUtils is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mQSDatabaseUtils:Lcom/android/systemui/qs/QSDatabaseUtils;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mQSDatabaseUtils:Lcom/android/systemui/qs/QSDatabaseUtils;

    if-nez v10, :cond_1

    .line 176
    new-instance v10, Lcom/android/systemui/qs/QSDatabaseUtils;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/systemui/qs/QSDatabaseUtils;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mQSDatabaseUtils:Lcom/android/systemui/qs/QSDatabaseUtils;

    .line 178
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mQSDatabaseUtils:Lcom/android/systemui/qs/QSDatabaseUtils;

    invoke-virtual {v10, v1}, Lcom/android/systemui/qs/QSDatabaseUtils;->getQSListFunctionValidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_2
    const-string v8, ""

    .line 181
    .local v8, "newAppList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 182
    .local v5, "i":I
    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v0, v2, v6

    .line 183
    .local v0, "app":Ljava/lang/String;
    const/4 v10, 0x4

    if-ne v5, v10, :cond_3

    .line 184
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "WifiCalling,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    :cond_3
    const-string v10, "WifiCalling"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 187
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 182
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "app":Ljava/lang/String;
    :cond_5
    const-string v10, "VoWiFiController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newAppList is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v10, -0x2

    invoke-static {v3, p1, v8, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 193
    .end local v1    # "appList":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "newAppList":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 195
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    const-string v10, "VoWiFiController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 217
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 219
    :try_start_0
    const-string v3, "com.sec.sprint.wfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "appState":I
    const-string v3, "com.sec.sprint.wfc"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "appState":I
    :goto_0
    return-object v3

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "com.oem.smartwifisupport"

    goto :goto_0

    .line 225
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const-string v3, "com.oem.smartwifisupport"

    goto :goto_0
.end method

.method private handleVoWifi()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;-><init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method private removeVoWifiApp(Ljava/lang/String;)V
    .locals 10
    .param p1, "nameList"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x2

    .line 200
    const-string v7, "VoWiFiController"

    const-string v8, "removeVoWifiApp"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 202
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2, p1, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "oldAppList":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, "WifiCalling"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v5, ""

    .line 207
    .local v5, "newAppList":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 208
    .local v0, "app":Ljava/lang/String;
    const-string v7, "WifiCalling"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "app":Ljava/lang/String;
    :cond_3
    invoke-static {v2, p1, v5, v9}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private final updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    const-string v4, "VOWIFI_STATUS_EXTRA_KEY"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "statusExtra":Ljava/lang/String;
    const/4 v2, 0x0

    .line 105
    .local v2, "visible":Z
    const/4 v3, 0x0

    .line 106
    .local v3, "vowifiIconId":I
    const/4 v0, 0x0

    .line 107
    .local v0, "contentDesc":Ljava/lang/String;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "VoWiFiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with extra: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    if-nez v1, :cond_1

    .line 129
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v4, "VOWIFI_SHOW_ROVE_IN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 114
    const/4 v2, 0x1

    .line 115
    const v3, 0x7f0205e9

    .line 116
    const-string v0, "VoWiFi Rove In"

    .line 125
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 126
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v5, "vowifi"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mService:Landroid/app/StatusBarManager;

    const-string v5, "vowifi"

    invoke-virtual {v4, v5, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :cond_4
    const-string v4, "VOWIFI_SHOW_ROVE_OUT"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 118
    const/4 v2, 0x1

    .line 119
    const v3, 0x7f0205ea

    .line 120
    const-string v0, "VoWiFi Rove Out"

    goto :goto_1

    .line 121
    :cond_5
    const-string v4, "VOWIFI_HIDE_ICON"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateVoWifiIfNeeded()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->getVowifiPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->VOWIFI_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "appState":I
    const-string v1, "VoWiFiController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appState is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 156
    const-string v1, "sysui_qs_tiles"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->removeVoWifiApp(Ljava/lang/String;)V

    .line 163
    .end local v0    # "appState":I
    :goto_0
    return-void

    .line 158
    .restart local v0    # "appState":I
    :cond_0
    const-string v1, "sysui_qs_tiles"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->addVoWifiApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0    # "appState":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method
