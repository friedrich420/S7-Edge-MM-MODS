.class public Lcom/android/systemui/BlockSwipeAction;
.super Lcom/android/systemui/SwipeAction;
.source "BlockSwipeAction.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# instance fields
.field private mHideAppNotificationList:[Ljava/lang/String;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BlockSwipeAction;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeAction;-><init>(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BlockSwipeAction;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BlockSwipeAction;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/BlockSwipeAction;->doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method private doBlock(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 206
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 208
    .local v1, "notificationManager":Landroid/app/INotificationManager;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 209
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v1, :cond_1

    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/BlockSwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/systemui/BlockSwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldUnlock(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/BlockSwipeAction;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 217
    :cond_0
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/BlockSwipeAction;->showUnlockHintToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_1
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;
    .locals 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 164
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "packages":[Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 167
    array-length v0, v5

    .line 168
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 169
    aget-object v3, v5, v2

    .line 170
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    const/16 v6, 0x40

    :try_start_0
    invoke-virtual {p1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 179
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 173
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 168
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 193
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 184
    :try_start_0
    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 185
    .local v1, "sys":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/android/systemui/BlockSwipeAction;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    .end local v1    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 189
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v4, p0, Lcom/android/systemui/BlockSwipeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 155
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/BlockSwipeAction;->findPackageInfo(Landroid/content/pm/PackageManager;Landroid/service/notification/StatusBarNotification;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 157
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    sget-object v4, Lcom/android/systemui/BlockSwipeAction;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v4, :cond_0

    .line 158
    new-array v4, v2, [Landroid/content/pm/Signature;

    invoke-direct {p0, v1}, Lcom/android/systemui/BlockSwipeAction;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v5

    aput-object v5, v4, v3

    sput-object v4, Lcom/android/systemui/BlockSwipeAction;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 160
    :cond_0
    sget-object v4, Lcom/android/systemui/BlockSwipeAction;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/systemui/BlockSwipeAction;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v4, v4, v3

    invoke-static {v0}, Lcom/android/systemui/BlockSwipeAction;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    sget-object v1, Lcom/android/systemui/BlockSwipeAction;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private showUnlockHintToast()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/BlockSwipeAction;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0436

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method


# virtual methods
.method public canSwipeAction(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 15
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, "isNotificationConfigAcitivity":Z
    iget-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 96
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    .line 97
    .local v11, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v12, :cond_0

    .line 100
    iget-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mContext:Landroid/content/Context;

    const-string v13, "launcherapps"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/LauncherApps;

    iput-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 103
    :cond_0
    iget-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v12, v8, v13}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    .line 106
    .local v5, "launcherActivityInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-static {v7}, Lcom/android/systemui/BlockSwipeAction;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v10

    .line 107
    .local v10, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 108
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 109
    const/4 v4, 0x1

    goto :goto_0

    .line 114
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_3

    if-nez v4, :cond_3

    .line 115
    const-string v12, "SwipeAction"

    const-string v13, "canSwipeAction-R1"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v12, 0x0

    .line 148
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return v12

    .line 120
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "hideAppNotificationList":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 123
    const-string v12, "SwipeAction"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "canSwipeAction-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v12, ","

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mHideAppNotificationList:[Ljava/lang/String;

    .line 125
    iget-object v12, p0, Lcom/android/systemui/BlockSwipeAction;->mHideAppNotificationList:[Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/systemui/BlockSwipeAction;->mHideAppNotificationList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v6, :cond_5

    aget-object v2, v0, v3

    .line 127
    .local v2, "hidePackageName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 128
    const-string v12, "SwipeAction"

    const-string v13, "canSwipeAction-R2"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v12, 0x0

    goto :goto_1

    .line 126
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "hidePackageName":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :cond_5
    invoke-direct {p0, v11}, Lcom/android/systemui/BlockSwipeAction;->isSystemPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 138
    const-string v12, "SwipeAction"

    const-string v13, "canSwipeAction-R3"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v12, 0x0

    goto :goto_1

    .line 148
    :cond_6
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public setSwipeClickListeners(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 65
    const v2, 0x7f0e030a

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "notificationLeft":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 67
    new-instance v2, Lcom/android/systemui/BlockSwipeAction$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BlockSwipeAction$1;-><init>(Lcom/android/systemui/BlockSwipeAction;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :cond_0
    const v2, 0x7f0e0310

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "notificationRight":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 74
    new-instance v2, Lcom/android/systemui/BlockSwipeAction$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/BlockSwipeAction$2;-><init>(Lcom/android/systemui/BlockSwipeAction;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_1
    return-void
.end method
