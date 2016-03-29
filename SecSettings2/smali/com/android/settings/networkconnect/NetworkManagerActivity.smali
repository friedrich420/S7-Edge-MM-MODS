.class public Lcom/android/settings/networkconnect/NetworkManagerActivity;
.super Landroid/app/TabActivity;
.source "NetworkManagerActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mDataBackupWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mIsCurrentSlotWarning:Z

.field public static mIsNeedReLoad:Z

.field public static mIsWarningStatus:Z

.field public static mSlotIndex:I

.field public static mSubId:I

.field public static mSubscriberId:Ljava/lang/String;

.field public static mUidDataLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiLongTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mWarningWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mWhiteList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentTab:Ljava/lang/String;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSharedpre:Landroid/content/SharedPreferences;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mApplicationNetInfoList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    .line 56
    sput v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    .line 57
    sput-boolean v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 58
    sput-boolean v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidDataLongTypeMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mUidWifiLongTypeMap:Ljava/util/Map;

    .line 63
    sput-boolean v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    .line 65
    sput v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v2

    const-string v1, "com.android.stk"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.android.stk2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWhiteList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mCurrentTab:Ljava/lang/String;

    return-void
.end method

.method private checkWarningStatus()V
    .locals 14

    .prologue
    .line 154
    new-instance v6, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 155
    .local v6, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 156
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 157
    invoke-virtual {v6}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->getTotalUsedData()J

    move-result-wide v4

    .line 158
    .local v4, "usedTotalBytes":J
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getActiveSubId()I

    move-result v1

    .line 159
    .local v1, "activeSubId":I
    const/4 v0, 0x0

    .line 160
    .local v0, "activeSimSlotWarningEnable":I
    const-string v2, ""

    .line 161
    .local v2, "allData":Ljava/lang/String;
    const-string v7, ""

    .line 162
    .local v7, "warningValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 163
    .local v3, "isTrafficSettingEnable":Z
    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set_data_limit"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "max"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data_warning_set"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "off"

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 165
    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data_warning_whitelist_enable_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 166
    iget-object v10, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "switch_traffic_settings"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 167
    const-string v10, "off"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const-string v10, "max"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    :cond_0
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 169
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 181
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long v8, v10, v12

    .line 173
    .local v8, "warningBytes":J
    cmp-long v10, v4, v8

    if-ltz v10, :cond_1

    const/4 v10, 0x1

    if-ne v0, v10, :cond_1

    .line 174
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    .line 175
    sget v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    if-ne v1, v10, :cond_3

    .line 176
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    goto :goto_0

    .line 178
    :cond_3
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    goto :goto_0
.end method

.method private getActiveSubId()I
    .locals 4

    .prologue
    .line 184
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultSubscriptionId(I)I

    move-result v0

    .line 185
    .local v0, "subId":I
    const-string v1, "NetworkManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0
.end method

.method private setupNormalTab()V
    .locals 4

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.networkconnect.NetworkConnectActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "subscriberId"

    sget-object v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "subId"

    sget v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0e16db

    invoke-virtual {p0, v3}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 107
    return-void
.end method

.method private setupWarningTab()V
    .locals 4

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.networkconnect.DataWarningLimitActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "subscriberId"

    sget-object v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "subId"

    sget v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "warning"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f0e0f7c

    invoke-virtual {p0, v3}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 116
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 78
    const-string v2, "subscriberId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    .line 79
    const-string v2, "slotIndex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    .line 80
    const-string v2, "subId"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    .line 82
    :cond_0
    iput-object p0, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 85
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    .line 87
    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->setupNormalTab()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->setupWarningTab()V

    .line 90
    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 137
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 120
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->finish()V

    .line 123
    const/4 v0, 0x1

    return v0

    .line 120
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 142
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsNeedReLoad:Z

    .line 143
    new-instance v1, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v2, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 144
    .local v1, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    sget-object v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_app_whitelist_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    const-string v3, "data_normal_app_whitelist"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->putWhiteList(Ljava/util/List;Ljava/lang/String;)V

    .line 146
    sget v2, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubId:I

    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->getActiveSubId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.ACTION_DATA_WARNING"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSharedpre:Landroid/content/SharedPreferences;

    .line 97
    invoke-direct {p0}, Lcom/android/settings/networkconnect/NetworkManagerActivity;->checkWarningStatus()V

    .line 98
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 132
    return-void
.end method
