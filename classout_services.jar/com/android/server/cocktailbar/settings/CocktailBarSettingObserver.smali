.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;
.super Landroid/database/ContentObserver;
.source "CocktailBarSettingObserver.java"


# static fields
.field private static final ACTION_COCKTAILBAR_SETTING_CHANGED:Ljava/lang/String; = "com.samsung.android.edge.intent.action.SETTING_CHANGED"

.field private static final NIGHTCLOCK_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.edge.nightclock.NightClockService"

.field private static final NIGHTCLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.edge.setting"

.field private static final PEOPLE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.service.peoplestripe.PeopleStripeService"

.field private static final PEOPLE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.peoplestripe"

.field private static final TAG:Ljava/lang/String; = "CocktailBarSettingObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private mLastActiveEdgeArea:I

.field private mLastIsInformationStreamOn:Z

.field private mLastIsNightModeOn:Z

.field private mLastIsPeopleStripeOn:Z

.field private mLastIsTaskEdgeOn:Z

.field private mLastIsTurnOverLightingOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, mLastActiveEdgeArea:I

    .line 58
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    .prologue
    .line 21
    iget v0, p0, mLastActiveEdgeArea:I

    return v0
.end method

.method private setupWakeup()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 161
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_99

    .line 162
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "edge_information_stream"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_9a

    move v1, v3

    .line 163
    .local v1, "isInformationStreamOn":Z
    :goto_1b
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "active_edge_area"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 164
    .local v0, "activeEdgeArea":I
    const-string v5, "CocktailBarSettingObserver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupWakeup : setting is changed. ,isInformationStreamOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mLastIsInformationStreamOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",activeEdgeArea="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mLastActiveEdgeArea:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mInitialized="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, mInitialized:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "updateWakeupArea":Z
    iget-boolean v5, p0, mInitialized:Z

    if-eqz v5, :cond_77

    iget-boolean v5, p0, mLastIsInformationStreamOn:Z

    if-eq v1, v5, :cond_81

    .line 170
    :cond_77
    iput-boolean v1, p0, mLastIsInformationStreamOn:Z

    .line 171
    if-eqz v1, :cond_9c

    .line 172
    const/4 v2, 0x1

    .line 173
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v8, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 178
    :cond_81
    :goto_81
    iget-boolean v3, p0, mInitialized:Z

    if-eqz v3, :cond_8b

    if-nez v2, :cond_8b

    iget v3, p0, mLastActiveEdgeArea:I

    if-eq v0, v3, :cond_99

    .line 179
    :cond_8b
    iput v0, p0, mLastActiveEdgeArea:I

    .line 180
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;

    invoke-direct {v4, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    .end local v0    # "activeEdgeArea":I
    .end local v1    # "isInformationStreamOn":Z
    .end local v2    # "updateWakeupArea":Z
    :cond_99
    return-void

    :cond_9a
    move v1, v4

    .line 162
    goto :goto_1b

    .line 175
    .restart local v0    # "activeEdgeArea":I
    .restart local v1    # "isInformationStreamOn":Z
    .restart local v2    # "updateWakeupArea":Z
    :cond_9c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, v8, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    goto :goto_81
.end method

.method private startNightClockServiceIfNeed()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "night_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_55

    .line 151
    .local v0, "isNightModeOn":Z
    :goto_11
    const-string v1, "CocktailBarSettingObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNightClockServiceIfNeed : setting is changed. ,isNightModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mLastIsNightModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean v1, p0, mInitialized:Z

    if-eqz v1, :cond_4a

    iget-boolean v1, p0, mLastIsNightModeOn:Z

    if-eq v0, v1, :cond_54

    .line 155
    :cond_4a
    iput-boolean v0, p0, mLastIsNightModeOn:Z

    .line 156
    const-string v1, "com.samsung.android.app.edge.setting"

    const-string v2, "com.samsung.android.app.edge.nightclock.NightClockService"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_54
    return-void

    .end local v0    # "isNightModeOn":Z
    :cond_55
    move v0, v1

    .line 150
    goto :goto_11
.end method

.method private startPeopleStripeServiceIfNeed()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 132
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "turn_over_lighting"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_ae

    move v2, v3

    .line 133
    .local v2, "isTurnOverLighting":Z
    :goto_12
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "people_stripe"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_b1

    move v0, v3

    .line 134
    .local v0, "isPeopleStripeOn":Z
    :goto_22
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "task_edge"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_b4

    move v1, v3

    .line 135
    .local v1, "isTaskEdgeOn":Z
    :goto_32
    const-string v3, "CocktailBarSettingObserver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPeopleStripeServiceIfNeed : setting is changed. isTurnOverLighting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLastIsTurnOverLightingOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isPeopleStripeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLastIsPeopleStripeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",isTaskEdgeOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mLastIsTaskEdgeOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mInitialized="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mInitialized:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-boolean v3, p0, mInitialized:Z

    if-eqz v3, :cond_9f

    iget-boolean v3, p0, mLastIsTurnOverLightingOn:Z

    if-ne v2, v3, :cond_9f

    iget-boolean v3, p0, mLastIsPeopleStripeOn:Z

    if-ne v0, v3, :cond_9f

    iget-boolean v3, p0, mLastIsTaskEdgeOn:Z

    if-eq v1, v3, :cond_ad

    .line 142
    :cond_9f
    iput-boolean v2, p0, mLastIsTurnOverLightingOn:Z

    .line 143
    iput-boolean v0, p0, mLastIsPeopleStripeOn:Z

    .line 144
    iput-boolean v1, p0, mLastIsTaskEdgeOn:Z

    .line 145
    const-string v3, "com.samsung.android.service.peoplestripe"

    const-string v4, "com.samsung.android.service.peoplestripe.PeopleStripeService"

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_ad
    return-void

    .end local v0    # "isPeopleStripeOn":Z
    .end local v1    # "isTaskEdgeOn":Z
    .end local v2    # "isTurnOverLighting":Z
    :cond_ae
    move v2, v4

    .line 132
    goto/16 :goto_12

    .restart local v2    # "isTurnOverLighting":Z
    :cond_b1
    move v0, v4

    .line 133
    goto/16 :goto_22

    .restart local v0    # "isPeopleStripeOn":Z
    :cond_b4
    move v1, v4

    .line 134
    goto/16 :goto_32
.end method

.method private startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "peoplePackageName"    # Ljava/lang/String;
    .param p2, "peopleClassName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.edge.intent.action.SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "i":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    if-eqz p3, :cond_17

    .line 194
    const-string/jumbo v2, "reason"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :cond_17
    :try_start_17
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 202
    :goto_1c
    return-void

    .line 198
    :catch_1d
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const-string v2, "CocktailBarSettingObserver"

    const-string/jumbo v3, "error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private updateSetting()V
    .registers 2

    .prologue
    .line 125
    invoke-direct {p0}, startPeopleStripeServiceIfNeed()V

    .line 126
    invoke-direct {p0}, startNightClockServiceIfNeed()V

    .line 127
    invoke-direct {p0}, setupWakeup()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 129
    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 64
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "turn_over_lighting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    const-string/jumbo v1, "people_stripe"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    const-string/jumbo v1, "night_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    const-string/jumbo v1, "task_edge"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 69
    const-string/jumbo v1, "edge_information_stream"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    const-string v1, "active_edge_area"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    :cond_4a
    invoke-direct {p0}, updateSetting()V

    .line 73
    return-void
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 81
    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 82
    const-string/jumbo v7, "reason"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, "reason":I
    const-string v7, "CocktailBarSettingObserver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EMERGENCY_STATE_CHANGED : reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v7, 0x5

    if-ne v5, v7, :cond_51

    .line 85
    iget-boolean v7, p0, mLastIsPeopleStripeOn:Z

    if-nez v7, :cond_3b

    iget-boolean v7, p0, mLastIsTaskEdgeOn:Z

    if-nez v7, :cond_3b

    iget-boolean v7, p0, mLastIsTurnOverLightingOn:Z

    if-eqz v7, :cond_45

    .line 86
    :cond_3b
    const-string v7, "com.samsung.android.service.peoplestripe"

    const-string v8, "com.samsung.android.service.peoplestripe.PeopleStripeService"

    const-string/jumbo v9, "emergencyMode"

    invoke-direct {p0, v7, v8, v9}, startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_45
    iget-boolean v7, p0, mLastIsNightModeOn:Z

    if-eqz v7, :cond_51

    .line 89
    const-string v7, "com.samsung.android.app.edge.setting"

    const-string v8, "com.samsung.android.app.edge.nightclock.NightClockService"

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v5    # "reason":I
    :cond_51
    :goto_51
    return-void

    .line 93
    :cond_52
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "added":Z
    const/4 v2, 0x0

    .line 96
    .local v2, "changed":Z
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 97
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_51

    .line 100
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_51

    .line 104
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 105
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 106
    if-nez v1, :cond_74

    if-eqz v2, :cond_51

    .line 107
    :cond_74
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 108
    .local v3, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_84

    if-eqz v3, :cond_51

    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 109
    :cond_84
    const-string v7, "com.samsung.android.service.peoplestripe"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 110
    iput-boolean v9, p0, mInitialized:Z

    .line 111
    invoke-direct {p0}, startPeopleStripeServiceIfNeed()V

    .line 112
    const/4 v7, 0x1

    iput-boolean v7, p0, mInitialized:Z

    goto :goto_51
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 121
    invoke-direct {p0}, updateSetting()V

    .line 122
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 76
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    return-void
.end method
