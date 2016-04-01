.class public Lcom/android/server/enterprise/browser/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;,
        Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    }
.end annotation


# static fields
.field private static final BROWSER_POLICY_SERVICE:Ljava/lang/String; = "FirewallPolicy"

.field static final NUM_OF_CONTAINER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUserCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCache:Ljava/util/HashMap;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUserCache:Ljava/util/HashMap;

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 185
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 186
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 188
    invoke-virtual {p0}, loadProxySettings()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/browser/BrowserPolicy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/browser/BrowserPolicy;

    .prologue
    .line 91
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 233
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 235
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 236
    return-object p1
.end method

.method private enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 251
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 253
    return-object p1
.end method

.method private enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 257
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.BROWSER_PROXY"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 259
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->enforceContainerPermission(I)I

    .line 260
    return-object p1
.end method

.method private enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 240
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 242
    return-object p1
.end method

.method private enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 245
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 247
    return-object p1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 221
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 224
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 714
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 715
    const-string v3, "BrowserPolicy"

    const-string v4, " getURLFilterEnabled calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const/4 v3, 0x0

    .line 732
    :goto_10
    return v3

    .line 718
    :cond_11
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 719
    .local v1, "containerId":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 721
    .local v2, "userId":I
    if-eqz p2, :cond_1f

    .line 722
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v3, -0x1

    invoke-direct {p1, v3, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 725
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_1f
    invoke-direct {p0, v2}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 726
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    if-nez v3, :cond_36

    .line 727
    const-string/jumbo v3, "filtering"

    invoke-direct {p0, p1, v3}, getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    .line 729
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 730
    invoke-direct {p0, v0, v2}, refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 732
    :cond_36
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterStateCache:Z

    goto :goto_10
.end method

.method private getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 824
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 825
    const-string v3, "BrowserPolicy"

    const-string v4, " getURLFilterList calls from Profile return default value"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v1, 0x0

    .line 854
    :goto_11
    return-object v1

    .line 828
    :cond_12
    const/4 v1, 0x0

    .line 829
    .local v1, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 830
    .local v2, "userId":I
    const-string v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getURLFilterList => userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callerUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " allAdmins "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, v2}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 833
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-ne p2, v6, :cond_7d

    .line 838
    iget-object v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    .line 839
    :try_start_4f
    iget-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    if-nez v3, :cond_7a

    .line 840
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    .line 841
    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_75

    .line 842
    const-string v3, "BrowserPolicy"

    const-string/jumbo v5, "getUrlBlackList - synchronized"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 844
    iget-object v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 845
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 850
    :cond_75
    :goto_75
    monitor-exit v4

    goto :goto_11

    :catchall_77
    move-exception v3

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_77

    throw v3

    .line 848
    :cond_7a
    :try_start_7a
    iget-object v1, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;
    :try_end_7c
    .catchall {:try_start_7a .. :try_end_7c} :catchall_77

    goto :goto_75

    .line 852
    :cond_7d
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_11
.end method

.method private getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1117
    const-string v9, "BrowserPolicy"

    const-string/jumbo v10, "getURLFilterReport()"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    new-array v0, v13, [Ljava/lang/String;

    .line 1119
    .local v0, "columns":[Ljava/lang/String;
    const-string/jumbo v9, "url"

    aput-object v9, v0, v11

    .line 1120
    const-string/jumbo v9, "time"

    aput-object v9, v0, v12

    .line 1121
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1124
    .local v6, "userId":I
    new-array v7, v13, [Ljava/lang/String;

    const-string v9, "containerID"

    aput-object v9, v7, v11

    const-string/jumbo v9, "userID"

    aput-object v9, v7, v12

    .line 1128
    .local v7, "where":[Ljava/lang/String;
    new-array v8, v13, [Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    .line 1132
    .local v8, "whereArgs":[Ljava/lang/String;
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterLogTable"

    invoke-virtual {v9, v10, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1134
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_4d

    .line 1135
    const-string v9, "BrowserPolicy"

    const-string/jumbo v10, "getURLFilterReport - cvList is null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const/4 v5, 0x0

    .line 1150
    .end local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4c
    return-object v5

    .line 1138
    .restart local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4d
    const/4 v1, 0x0

    .line 1139
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1141
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_52
    :goto_52
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4c

    .line 1142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1143
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "time"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1144
    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_52

    .line 1145
    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1146
    const-string/jumbo v9, "url"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52
.end method

.method private getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1088
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1089
    const-string v2, "BrowserPolicy"

    const-string v3, " getURLFilterReportEnabled calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const/4 v2, 0x0

    .line 1103
    :goto_10
    return v2

    .line 1092
    :cond_11
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1094
    .local v1, "userId":I
    invoke-direct {p0, v1}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 1095
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    if-nez v2, :cond_46

    .line 1096
    const-string/jumbo v2, "logging"

    invoke-direct {p0, p1, v2}, getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    .line 1098
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1099
    const-string v2, "WebFilteringCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache.mUrlFilterReportState=> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-direct {p0, v0, v1}, refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 1103
    :cond_46
    iget-boolean v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlFilterReportState:Z

    goto :goto_10
.end method

.method private getUrlBlackList(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1206
    .local v7, "uid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1208
    .local v1, "containerId":I
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/String;

    .line 1209
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "url"

    aput-object v11, v0, v10

    .line 1210
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v8, "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getUrlBlackList - uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    if-nez p2, :cond_72

    .line 1213
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v11, v7, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1216
    .local v2, "cursor":Landroid/database/Cursor;
    if-nez v2, :cond_41

    .line 1217
    const-string v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - Cursor is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v8, 0x0

    .line 1253
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_40
    :goto_40
    return-object v8

    .line 1221
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    :try_start_41
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 1223
    :cond_47
    const-string/jumbo v10, "url"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_58} :catch_5f
    .catchall {:try_start_41 .. :try_end_58} :catchall_6d

    move-result v10

    if-nez v10, :cond_47

    .line 1231
    :cond_5b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 1227
    :catch_5f
    move-exception v5

    .line 1228
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_60
    const-string v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6d

    .line 1229
    const/4 v8, 0x0

    .line 1231
    .end local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "urlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_6d
    move-exception v10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v10

    .line 1234
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_72
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 1235
    .local v9, "userId":I
    const-string v10, "BrowserPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Getting URLList called by server for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "WebFilterTable"

    invoke-virtual {v10, v1, v11, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1241
    if-nez v4, :cond_a7

    .line 1242
    const-string v10, "BrowserPolicy"

    const-string/jumbo v11, "getUrlBlackList - cv is null"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    const/4 v8, 0x0

    goto :goto_40

    .line 1246
    :cond_a7
    const/4 v3, 0x0

    .line 1247
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1248
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_ac
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1249
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cv":Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 1250
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ac
.end method

.method private getUrlFilterState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 1154
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 1155
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p2, v0, v7

    .line 1156
    const/4 v4, 0x0

    .line 1158
    .local v4, "ret":Z
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " containerId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " column:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1162
    .local v6, "userId":I
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const-string v9, "WebFilterSettingsTable"

    invoke-virtual {v7, v8, v9, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(ILjava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 1166
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_82

    .line 1167
    const/4 v1, 0x0

    .line 1168
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1170
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_66
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    .line 1171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1172
    .restart local v1    # "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1173
    .local v5, "string":Ljava/lang/String;
    if-eqz v5, :cond_66

    const-string/jumbo v7, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 1174
    const/4 v4, 0x1

    .line 1180
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v5    # "string":Ljava/lang/String;
    :cond_82
    const-string v7, "BrowserPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getUrlFilterState - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    return v4
.end method

.method private getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x2

    .line 1257
    iget-object v3, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1259
    new-array v0, v5, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1260
    .local v0, "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v5, :cond_1c

    .line 1261
    new-instance v3, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    invoke-direct {v3, p0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;I)V

    aput-object v3, v0, v1

    .line 1260
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1263
    :cond_1c
    iget-object v3, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    .end local v0    # "cache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .end local v1    # "i":I
    :cond_25
    iget-object v3, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1267
    .local v2, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    return-object v3
.end method

.method private refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V
    .registers 6
    .param p1, "cache"    # Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .param p2, "userId"    # I

    .prologue
    .line 1271
    iget-object v1, p0, mUserCache:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 1283
    :cond_4
    :goto_4
    return-void

    .line 1275
    :cond_5
    iget-object v1, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1276
    iget-object v1, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    .line 1277
    .local v0, "tCache":[Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    if-eqz v0, :cond_4

    .line 1278
    iget-object v1, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1280
    iget-object v1, p0, mUserCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method private removeAdmin(Landroid/app/enterprise/ContextInfo;)V
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1286
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1287
    .local v1, "userId":I
    invoke-direct {p0, v1}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 1288
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v2, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1289
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 1290
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 1291
    iput-boolean v3, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1292
    return-void
.end method

.method private saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 958
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 959
    const-string v5, "BrowserPolicy"

    const-string v6, " saveURLBlockedReport calls from Profile return default value"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_f
    :goto_f
    return-void

    .line 962
    :cond_10
    const-string v5, "BrowserPolicy"

    const-string/jumbo v6, "saveURLBlockedReport"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 964
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 965
    .local v4, "userId":I
    const-string v5, "BrowserPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saveURLBlockedReport > userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 967
    .local v2, "time":J
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 968
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "url"

    invoke-virtual {v1, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string/jumbo v5, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v5, "containerID"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    const-string/jumbo v5, "userID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 972
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "WebFilterLogTable"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 974
    const-string v5, "BrowserPolicy"

    const-string/jumbo v6, "isUrlBlocked - Failed on inserting log"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private saveUrlBlackList(IILjava/util/List;)Z
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1185
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1186
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1188
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    .line 1189
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1190
    const-string v2, "adminUid"

    invoke-static {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->translateToAdminLUID(II)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1196
    const/4 v2, 0x0

    .line 1200
    :goto_53
    return v2

    .line 1198
    :cond_54
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_10

    .line 1200
    :cond_58
    const/4 v2, 0x1

    goto :goto_53
.end method

.method private setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 629
    const-string v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setURLFilterEnabled("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 631
    .local v1, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 632
    .local v6, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 634
    .local v7, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 635
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "filtering"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterSettingsTable"

    invoke-virtual {v8, v6, v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    .line 639
    .local v5, "ret":Z
    const/4 v8, 0x1

    if-ne v5, v8, :cond_67

    .line 641
    invoke-direct {p0, v7}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 642
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v9

    .line 643
    :try_start_48
    iget-object v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 644
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterStateUpdated:Z

    .line 645
    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 646
    invoke-direct {p0, v0, v7}, refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 647
    if-nez p2, :cond_5f

    .line 648
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "WebFilterTable"

    invoke-virtual {v8, v10, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    .line 650
    :cond_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_a5

    .line 653
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "FirewallPolicy/getURLFilterEnabled"

    invoke-static {v8, v9, v7}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 658
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_67
    if-eqz v5, :cond_88

    if-nez v7, :cond_88

    .line 659
    new-instance v4, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 661
    .local v4, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_72
    const-string v8, "Firewall"

    const-string/jumbo v9, "setURLFilterEnabled"

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1, v10, v11}, getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v10

    invoke-virtual {v4, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 662
    const-string v8, "BrowserPolicy"

    const-string/jumbo v9, "setURLFilterEnabled() calling gearPolicyManager "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_88} :catch_a8

    .line 667
    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_88
    :goto_88
    const-string v8, "BrowserPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setURLFilterEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    if-eqz v5, :cond_ad

    const/4 v8, 0x1

    :goto_a4
    return v8

    .line 650
    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_a5
    move-exception v8

    :try_start_a6
    monitor-exit v9
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v8

    .line 663
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_a8
    move-exception v3

    .line 664
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88

    .line 668
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_ad
    const/4 v8, 0x0

    goto :goto_a4
.end method

.method private setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 747
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 748
    .local v1, "containerId":I
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 749
    .local v5, "uid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 751
    .local v6, "userId":I
    if-nez p2, :cond_d

    .line 779
    :goto_c
    return v8

    .line 755
    :cond_d
    invoke-direct {p0, v1, v5, p2}, saveUrlBlackList(IILjava/util/List;)Z

    move-result v4

    .line 756
    .local v4, "ret":Z
    if-ne v4, v7, :cond_2d

    .line 758
    invoke-direct {p0, v6}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v0

    .line 759
    .local v0, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    iget-object v9, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v9

    .line 760
    :try_start_1a
    iget-object v10, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 761
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 762
    invoke-direct {p0, v0, v6}, refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 763
    monitor-exit v9
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_4c

    .line 766
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "FirewallPolicy/getURLFilterList"

    invoke-static {v9, v10, v6}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 770
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_2d
    if-eqz v4, :cond_48

    if-nez v6, :cond_48

    .line 771
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 773
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_38
    const-string v9, "Firewall"

    const-string/jumbo v10, "setURLFilterList"

    invoke-virtual {v3, v9, v10, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    .line 774
    const-string v9, "BrowserPolicy"

    const-string/jumbo v10, "setURLFilterList() calling gearPolicyManager "

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_4f

    .line 779
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_48
    :goto_48
    if-eqz v4, :cond_54

    :goto_4a
    move v8, v7

    goto :goto_c

    .line 763
    .restart local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :catchall_4c
    move-exception v7

    :try_start_4d
    monitor-exit v9
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v7

    .line 775
    .end local v0    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4f
    move-exception v2

    .line 776
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_54
    move v7, v8

    .line 779
    goto :goto_4a
.end method

.method private setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 992
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 993
    .local v5, "containerId":I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 994
    .local v12, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 996
    .local v14, "userId":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 997
    .local v6, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "logging"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "WebFilterSettingsTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v5, v0, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v9

    .line 1001
    .local v9, "ret":Z
    const/4 v15, 0x1

    if-ne v9, v15, :cond_63

    .line 1002
    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setURLFilterReportEnabled - Added to database, refreshing cache userId= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getWebFilteringCache(I)Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;

    move-result-object v4

    .line 1005
    .local v4, "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlFilterReportUpdated:Z

    .line 1006
    const/4 v15, 0x0

    iput-boolean v15, v4, Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;->mIsUrlBlacklistUpdated:Z

    .line 1007
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, refreshWebFiltering(Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;I)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "FirewallPolicy/getURLFilterReportEnabled"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1017
    .end local v4    # "cache":Lcom/android/server/enterprise/browser/BrowserPolicy$WebFilteringCache;
    :cond_63
    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v15, v2}, getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v13

    .line 1018
    .local v13, "urlFilterReportEnabled":Z
    if-eqz p2, :cond_74

    if-nez v13, :cond_a8

    .line 1019
    :cond_74
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setURLFilterReportEnabled - Clean url report"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "containerID"

    aput-object v16, v10, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "userID"

    aput-object v16, v10, v15

    .line 1026
    .local v10, "sColumns":[Ljava/lang/String;
    const/4 v15, 0x2

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    const/4 v15, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    .line 1030
    .local v11, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "WebFilterLogTable"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1033
    .end local v10    # "sColumns":[Ljava/lang/String;
    .end local v11    # "sValues":[Ljava/lang/String;
    :cond_a8
    if-eqz v9, :cond_d9

    if-nez v14, :cond_d9

    .line 1034
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1036
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b5
    const-string v15, "Firewall"

    const-string/jumbo v16, "setURLFilterReportEnabled"

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1037
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setURLFilterReportEnabled() calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d9} :catch_f8

    .line 1043
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_d9
    :goto_d9
    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setURLFilterReportEnabled - return = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    if-eqz v9, :cond_fd

    const/4 v15, 0x1

    :goto_f7
    return v15

    .line 1038
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_f8
    move-exception v7

    .line 1039
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d9

    .line 1044
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_fd
    const/4 v15, 0x0

    goto :goto_f7
.end method

.method private static validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 582
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 608
    :cond_d
    :goto_d
    return v6

    .line 585
    :cond_e
    const/4 v5, -0x1

    .line 587
    .local v5, "portVal":I
    :try_start_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_63

    move-result v5

    .line 591
    if-lez v5, :cond_d

    const v7, 0xffff

    if-gt v5, v7, :cond_d

    .line 595
    const-string v0, "a-zA-Z0-9\\_"

    .line 597
    .local v0, "HC":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^$|^["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+(\\-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+)*(\\.["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+(\\-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]+)*)*$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "HOSTNAME_REGEXP":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 603
    .local v1, "HOSTNAME_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 605
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 608
    const/4 v6, 0x1

    goto :goto_d

    .line 588
    .end local v0    # "HC":Ljava/lang/String;
    .end local v1    # "HOSTNAME_PATTERN":Ljava/util/regex/Pattern;
    .end local v2    # "HOSTNAME_REGEXP":Ljava/lang/String;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :catch_63
    move-exception v3

    .line 589
    .local v3, "ex":Ljava/lang/NumberFormatException;
    goto :goto_d
.end method


# virtual methods
.method public clearHttpProxy(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 475
    invoke-direct {p0, p1}, enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 476
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 477
    .local v0, "adminUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 478
    .local v1, "containerId":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 479
    .local v5, "userId":I
    const/4 v4, 0x0

    .line 481
    .local v4, "result":Z
    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6, v0}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 483
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BROWSER_PROXY"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;II)Z

    move-result v4

    .line 485
    if-eqz v4, :cond_aa

    .line 486
    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 488
    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 491
    iget-object v6, p0, mCache:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_9c
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "BrowserPolicy/getHttpProxy"

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 495
    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy() : SecContentProvider updated."

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_aa
    if-eqz v4, :cond_c4

    if-nez v5, :cond_c4

    .line 499
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 502
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_b5
    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy"

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 503
    const-string v6, "BrowserPolicy"

    const-string v7, "clearHttpProxy() calling gearPolicyManager "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c4} :catch_dd

    .line 508
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_c4
    :goto_c4
    const-string v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearHttpProxy() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return v4

    .line 504
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_dd
    move-exception v2

    .line 505
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c4
.end method

.method public getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "setting"    # I

    .prologue
    .line 348
    const/4 v2, 0x1

    .line 349
    .local v2, "lEnabled":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 357
    .local v3, "userId":I
    :try_start_5
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BROWSER"

    const-string v8, "browserSettings"

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 360
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_54

    .line 361
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_5d

    move-result v4

    .line 362
    .local v4, "value":I
    if-ltz v4, :cond_19

    .line 374
    and-int v6, v4, p2

    if-eq p2, v6, :cond_19

    .line 375
    const/4 v2, 0x0

    .line 387
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":I
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_30
    :goto_30
    const-string v6, "BrowserPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBrowserSettingStatus("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return v2

    .line 382
    .restart local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_54
    :try_start_54
    const-string v6, "BrowserPolicy"

    const-string/jumbo v7, "getBrowserSettingStatus() : No Policy in BrowserPolicy."

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_5d

    goto :goto_30

    .line 384
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_5d
    move-exception v0

    .line 385
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "BrowserPolicy"

    const-string/jumbo v7, "getBrowserSettingStatus() : failed. "

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method public getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 518
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 519
    .local v2, "userId":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 520
    .local v0, "containerId":I
    const/4 v1, 0x0

    .line 521
    .local v1, "ret":Ljava/lang/String;
    iget-object v3, p0, mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 522
    iget-object v3, p0, mCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    # getter for: Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->mProxySetting:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->access$100(Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;)Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_43
    const-string v3, "BrowserPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getHttpProxy() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v1
.end method

.method public getURLFilterEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 698
    if-eqz p3, :cond_b

    .line 699
    :try_start_2
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 709
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 701
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 703
    :catch_10
    move-exception v0

    .line 706
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 677
    if-eqz p3, :cond_b

    .line 678
    :try_start_2
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 689
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 680
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 682
    :catch_10
    move-exception v0

    .line 685
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterListEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    if-eqz p3, :cond_b

    .line 809
    :try_start_2
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 819
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 811
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 813
    :catch_10
    move-exception v0

    .line 816
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterList"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 788
    if-eqz p3, :cond_b

    .line 789
    :try_start_2
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 799
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 791
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 793
    :catch_10
    move-exception v0

    .line 796
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterList"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterReportEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1071
    if-eqz p3, :cond_b

    .line 1072
    :try_start_2
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 1083
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 1074
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 1076
    :catch_10
    move-exception v0

    .line 1079
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z
    .param p3, "isActiveAdmin"    # Z

    .prologue
    .line 1053
    if-eqz p3, :cond_b

    .line 1054
    :try_start_2
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_10

    move-result-object p1

    .line 1065
    :goto_6
    invoke-direct {p0, p1, p2, p3}, getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v1

    return v1

    .line 1056
    :cond_b
    :try_start_b
    invoke-direct {p0, p1}, enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_e} :catch_10

    move-result-object p1

    goto :goto_6

    .line 1058
    :catch_10
    move-exception v0

    .line 1061
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public getURLFilterReportEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1112
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1113
    invoke-direct {p0, p1}, getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getURLFilterReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1107
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1108
    invoke-direct {p0, p1}, getURLFilterReport(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 865
    const/4 v9, 0x0

    .line 866
    .local v9, "isBlocked":Z
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, getURLFilterEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v7

    .line 868
    .local v7, "filterEnabled":Z
    if-nez v7, :cond_1e

    .line 869
    const-string v17, "BrowserPolicy"

    const-string/jumbo v18, "isUrlBlocked - Policy disabled"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const/16 v17, 0x0

    .line 925
    :goto_1d
    return v17

    .line 873
    :cond_1e
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, getURLFilterList(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v15

    .line 874
    .local v15, "urlBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "urlBlacklist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    if-eqz v15, :cond_11c

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_11c

    .line 877
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 878
    .local v5, "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_55
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11c

    .line 879
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 880
    .local v4, "adminRule":Ljava/lang/String;
    const-string v17, "*"

    const-string v18, ".*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 881
    .local v14, "regex":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 882
    .local v12, "newUrl":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 883
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8f

    .line 884
    const/16 v17, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 886
    :cond_8f
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a9

    .line 887
    const/16 v17, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 889
    :cond_a9
    const-string/jumbo v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13b

    .line 890
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 894
    :cond_bc
    :goto_bc
    const-string/jumbo v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_150

    .line 895
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 902
    :cond_cf
    :goto_cf
    :try_start_cf
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 903
    .local v13, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 904
    .local v11, "matchUrl":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 905
    if-nez v9, :cond_101

    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_101

    .line 906
    const/16 v17, 0x0

    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 907
    .local v8, "host":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 908
    .local v10, "matchHost":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_100
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_cf .. :try_end_100} :catch_165

    move-result v9

    .line 914
    .end local v8    # "host":Ljava/lang/String;
    .end local v10    # "matchHost":Ljava/util/regex/Matcher;
    .end local v11    # "matchUrl":Ljava/util/regex/Matcher;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    :cond_101
    :goto_101
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_55

    .line 916
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, getURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v16

    .line 917
    .local v16, "urlFilterEnabled":Z
    if-eqz v16, :cond_11c

    .line 918
    invoke-direct/range {p0 .. p2}, saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 924
    .end local v4    # "adminRule":Ljava/lang/String;
    .end local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12    # "newUrl":Ljava/lang/String;
    .end local v14    # "regex":Ljava/lang/String;
    .end local v16    # "urlFilterEnabled":Z
    :cond_11c
    const-string v17, "BrowserPolicy"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "isUrlBlocked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v9

    .line 925
    goto/16 :goto_1d

    .line 891
    .restart local v4    # "adminRule":Ljava/lang/String;
    .restart local v5    # "blacklistIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12    # "newUrl":Ljava/lang/String;
    .restart local v14    # "regex":Ljava/lang/String;
    :cond_13b
    const-string/jumbo v17, "https://"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_bc

    .line 892
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_bc

    .line 897
    :cond_150
    const-string/jumbo v17, "http://"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_cf

    .line 898
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_cf

    .line 910
    :catch_165
    move-exception v6

    .line 911
    .local v6, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v17, "BrowserPolicy"

    const-string/jumbo v18, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 859
    .local v1, "uid":I
    const-string v2, "BrowserPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isUrlBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 861
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-virtual {p0, v0, p1}, isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method loadProxySettings()V
    .registers 16

    .prologue
    const/4 v12, 0x0

    .line 192
    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/String;

    const-string v11, "adminUid"

    aput-object v11, v3, v12

    const/4 v11, 0x1

    const-string/jumbo v12, "proxyServer"

    aput-object v12, v3, v11

    .line 194
    .local v3, "columns":[Ljava/lang/String;
    :try_start_e
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "BROWSER_PROXY"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 196
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 197
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v11, "proxyServer"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, "proxySetting":Ljava/lang/String;
    const-string v11, "adminUid"

    invoke-virtual {v5, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 200
    .local v0, "adminLUID":J
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerIdFromLUID(J)I

    move-result v4

    .line 201
    .local v4, "containerId":I
    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v2

    .line 202
    .local v2, "admindUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 204
    .local v10, "userId":I
    iget-object v11, p0, mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 205
    iget-object v11, p0, mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_5f
    iget-object v11, p0, mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8d

    .line 208
    iget-object v11, p0, mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-direct {v13, p0, v10, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_8d
    iget-object v11, p0, mCache:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    const/4 v12, 0x0

    invoke-virtual {v11, v2, v8, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a7} :catch_a9

    goto/16 :goto_1c

    .line 212
    .end local v0    # "adminLUID":J
    .end local v2    # "admindUid":I
    .end local v4    # "containerId":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "proxySetting":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v10    # "userId":I
    :catch_a9
    move-exception v6

    .line 213
    .local v6, "ex":Ljava/lang/Exception;
    const-string v11, "BrowserPolicy"

    const-string/jumbo v12, "loadProxySettings() : failed"

    invoke-static {v11, v12, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_b2
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 530
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 6
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 534
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 535
    .local v0, "userId":I
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 537
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 539
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 542
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_8a
    return-void
.end method

.method public onContainerCreation(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 558
    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 6
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 562
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 563
    .local v0, "userId":I
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 565
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->clear()V

    .line 567
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 570
    iget-object v1, p0, mCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_89
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 553
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-direct {p0, v0}, removeAdmin(Landroid/app/enterprise/ContextInfo;)V

    .line 554
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 1297
    return-void
.end method

.method public saveURLBlockedReportEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 948
    :try_start_0
    invoke-direct {p0, p1}, enforceBrowserPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_7

    .line 954
    :goto_3
    invoke-direct {p0, p1, p2}, saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 955
    return-void

    .line 949
    :catch_7
    move-exception v0

    .line 950
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "BrowserPolicy"

    const-string v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "saveURLBlockedReport"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public saveURLBlockedReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 934
    :try_start_0
    invoke-direct {p0, p1}, enforceFirewallPermissionByContext(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_7

    .line 940
    :goto_3
    invoke-direct {p0, p1, p2}, saveURLBlockedReport(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 941
    return-void

    .line 935
    :catch_7
    move-exception v0

    .line 936
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v1, "BrowserPolicy"

    const-string v2, "Enforcing Chrome permission"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v1

    const-string v2, "FirewallPolicy"

    const-string/jumbo v3, "saveURLBlockedReport"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;ZI)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "setting"    # I

    .prologue
    .line 273
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 274
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 275
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 276
    .local v8, "userId":I
    const/4 v5, 0x0

    .line 277
    .local v5, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 282
    .local v6, "token":J
    :try_start_f
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "BROWSER"

    const-string v11, "browserSettings"

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_78
    .catchall {:try_start_f .. :try_end_18} :catchall_c6

    move-result v4

    .line 289
    .local v4, "lValue":I
    :goto_19
    const/4 v9, 0x1

    if-ne v9, p2, :cond_9c

    or-int/2addr v4, p3

    .line 290
    :goto_1d
    :try_start_1d
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "BROWSER"

    const-string v11, "browserSettings"

    invoke-virtual {v9, v1, v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 296
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 297
    .local v0, "am":Landroid/app/IActivityManager;
    const-string v9, "com.android.browser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 298
    const-string v9, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 299
    const-string v9, "com.android.chrome"

    invoke-interface {v0, v9, v8}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3a} :catch_a1
    .catchall {:try_start_1d .. :try_end_3a} :catchall_c6

    .line 303
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v4    # "lValue":I
    :goto_3d
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus() : = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", enable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",  setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v5, :cond_77

    .line 309
    sparse-switch p3, :sswitch_data_ec

    .line 334
    :goto_6f
    const-string v9, "BrowserPolicy"

    const-string/jumbo v10, "setBrowserSettingStatus() : SecContentProvider updated."

    invoke-static {v9, v10}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_77
    return v5

    .line 284
    :catch_78
    move-exception v2

    .line 285
    .local v2, "e":Ljava/lang/Exception;
    :try_start_79
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : EdmStorageProvider failed to read Data. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_98} :catch_a1
    .catchall {:try_start_79 .. :try_end_98} :catchall_c6

    .line 286
    const/16 v4, 0x1f

    .restart local v4    # "lValue":I
    goto/16 :goto_19

    .line 289
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9c
    xor-int/lit8 v9, p3, -0x1

    and-int/2addr v4, v9

    goto/16 :goto_1d

    .line 300
    .end local v4    # "lValue":I
    :catch_a1
    move-exception v3

    .line 301
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_a2
    const-string v9, "BrowserPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setBrowserSettingStatus("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : failed. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c1
    .catchall {:try_start_a2 .. :try_end_c1} :catchall_c6

    .line 303
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3d

    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_c6
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 311
    :sswitch_cb
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getPopupsSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6f

    .line 316
    :sswitch_d3
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getCookiesSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6f

    .line 322
    :sswitch_db
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getAutoFillSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6f

    .line 328
    :sswitch_e3
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "BrowserPolicy/getJavaScriptSetting"

    invoke-static {v9, v10, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_6f

    .line 309
    nop

    :sswitch_data_ec
    .sparse-switch
        0x1 -> :sswitch_cb
        0x2 -> :sswitch_d3
        0x4 -> :sswitch_db
        0x10 -> :sswitch_e3
    .end sparse-switch
.end method

.method public setHttpProxy(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "proxySetting"    # Ljava/lang/String;

    .prologue
    .line 397
    invoke-direct/range {p0 .. p1}, enforceBrowserProxyPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 398
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 399
    .local v2, "adminUid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 400
    .local v4, "containerId":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 401
    .local v14, "userId":I
    if-nez p2, :cond_14

    .line 402
    const/4 v13, 0x0

    .line 466
    :goto_13
    return v13

    .line 404
    :cond_14
    const/4 v13, 0x0

    .line 407
    .local v13, "result":Z
    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 408
    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, "params":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v9, v11, v15

    .line 410
    .local v9, "hostname":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v12, v11, v15

    .line 415
    .end local v11    # "params":[Ljava/lang/String;
    .local v12, "port":Ljava/lang/String;
    :goto_2d
    invoke-static {v9, v12}, validateProxyParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3a

    .line 416
    const/4 v13, 0x0

    goto :goto_13

    .line 412
    .end local v9    # "hostname":Ljava/lang/String;
    .end local v12    # "port":Ljava/lang/String;
    :cond_35
    move-object/from16 v9, p2

    .line 413
    .restart local v9    # "hostname":Ljava/lang/String;
    const-string v12, "80"

    .restart local v12    # "port":Ljava/lang/String;
    goto :goto_2d

    .line 419
    :cond_3a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, "myProxySetting":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_46

    .line 421
    const/4 v13, 0x0

    goto :goto_13

    .line 423
    :cond_46
    move-object/from16 v0, p0

    iget-object v15, v0, mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_64

    .line 424
    move-object/from16 v0, p0

    iget-object v15, v0, mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_64
    move-object/from16 v0, p0

    iget-object v15, v0, mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9a

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-instance v17, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v4}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;-><init>(Lcom/android/server/enterprise/browser/BrowserPolicy;II)V

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v15, v0, mCache:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;

    .line 431
    .local v3, "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    invoke-virtual {v3}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isAlreadySet()Z

    move-result v15

    if-eqz v15, :cond_be

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->isOwner(I)Z

    move-result v15

    if-eqz v15, :cond_13c

    .line 432
    :cond_be
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v5, "cv":Landroid/content/ContentValues;
    const-string/jumbo v15, "proxyServer"

    invoke-virtual {v5, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v16, "BROWSER_PROXY"

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v4, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v13

    .line 436
    if-eqz v13, :cond_db

    .line 437
    const/4 v15, 0x0

    invoke-virtual {v3, v2, v10, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;->setProxy(ILjava/lang/String;Z)V

    .line 443
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_db
    :goto_db
    if-eqz v13, :cond_f0

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    const-string v16, "BrowserPolicy/getHttpProxy"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lcom/android/server/enterprise/content/SecContentProvider;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 447
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy() : SecContentProvider updated."

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_f0} :catch_13e

    .line 454
    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :cond_f0
    :goto_f0
    if-eqz v13, :cond_111

    if-nez v14, :cond_111

    .line 455
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v15, v0, mContext:Landroid/content/Context;

    invoke-direct {v8, v15}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 458
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_fd
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v8, v15, v0, v1}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy()  calling gearPolicyManager "

    invoke-static/range {v15 .. v16}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_111} :catch_14b

    .line 464
    .end local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_111
    :goto_111
    const-string v15, "BrowserPolicy"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setHttpProxy("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ") : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 440
    .restart local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :cond_13c
    const/4 v13, 0x0

    goto :goto_db

    .line 450
    .end local v3    # "auxCache":Lcom/android/server/enterprise/browser/BrowserPolicy$BrowserProxyCache;
    :catch_13e
    move-exception v7

    .line 451
    .local v7, "ex":Ljava/lang/Exception;
    const-string v15, "BrowserPolicy"

    const-string/jumbo v16, "setHttpProxy() : failed."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    const/4 v13, 0x0

    goto :goto_f0

    .line 460
    .end local v7    # "ex":Ljava/lang/Exception;
    .restart local v8    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_14b
    move-exception v6

    .line 461
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_111
.end method

.method public setURLFilterEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 624
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 625
    invoke-direct {p0, p1, p2}, setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 616
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 617
    invoke-direct {p0, p1, p2}, setURLFilterEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 742
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 743
    invoke-direct {p0, p1, p2}, setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 737
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 738
    invoke-direct {p0, p1, p2}, setURLFilterList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingBrowserPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 987
    invoke-direct {p0, p1}, enforceBrowserPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 988
    invoke-direct {p0, p1, p2}, setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public setURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 981
    invoke-direct {p0, p1}, enforceFirewallPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 982
    invoke-direct {p0, p1, p2}, setURLFilterReportEnabled(Landroid/app/enterprise/ContextInfo;Z)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 549
    return-void
.end method
