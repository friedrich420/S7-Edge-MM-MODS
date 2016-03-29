.class public Lcom/android/settings/notification/ServiceListing;
.super Ljava/lang/Object;
.source "ServiceListing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ServiceListing$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ServiceListing$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mEnabledServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mListening:Z

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mServices:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mCallbacks:Ljava/util/List;

    .line 189
    new-instance v0, Lcom/android/settings/notification/ServiceListing$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ServiceListing$1;-><init>(Lcom/android/settings/notification/ServiceListing;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 196
    new-instance v0, Lcom/android/settings/notification/ServiceListing$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ServiceListing$2;-><init>(Lcom/android/settings/notification/ServiceListing;)V

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    iput-object p1, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/notification/ServiceListing;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    return-void
.end method

.method public static findService(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    new-instance v1, Lcom/android/settings/notification/ServiceListing;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    .line 98
    .local v1, "listing":Lcom/android/settings/notification/ServiceListing;
    invoke-virtual {v1}, Lcom/android/settings/notification/ServiceListing;->reload()Ljava/util/List;

    move-result-object v4

    .line 99
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 100
    .local v2, "service":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v3, "serviceCN":Landroid/content/ComponentName;
    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    .end local v2    # "service":Landroid/content/pm/ServiceInfo;
    .end local v3    # "serviceCN":Landroid/content/ComponentName;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getEnabledServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I
    .locals 4
    .param p0, "config"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 89
    :goto_0
    return v2

    .line 88
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private static getServices(Lcom/android/settings/notification/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I
    .locals 10
    .param p0, "c"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/ManagedServiceSettings$Config;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")I"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const/4 v5, 0x0

    .line 110
    .local v5, "services":I
    if-eqz p1, :cond_0

    .line 111
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 113
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 115
    .local v6, "user":I
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {p2, v7, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 120
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 121
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 122
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 124
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 125
    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    .line 132
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 136
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return v5
.end method

.method private loadEnabledServices()V
    .locals 6

    .prologue
    .line 154
    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 155
    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/settings/notification/ServiceListing;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v5, v5, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 159
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 160
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveEnabledServices()V
    .locals 6

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 142
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/notification/ServiceListing;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v5, v3, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    return-void

    .line 149
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method


# virtual methods
.method public addCallback(Lcom/android/settings/notification/ServiceListing$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/notification/ServiceListing$Callback;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public isEnabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reload()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/settings/notification/ServiceListing;->loadEnabledServices()V

    .line 169
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v3, p0, Lcom/android/settings/notification/ServiceListing;->mServices:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/notification/ServiceListing;->getServices(Lcom/android/settings/notification/ManagedServiceSettings$Config;Ljava/util/List;Landroid/content/pm/PackageManager;)I

    .line 170
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ServiceListing$Callback;

    .line 171
    .local v0, "callback":Lcom/android/settings/notification/ServiceListing$Callback;
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mServices:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/android/settings/notification/ServiceListing$Callback;->onServicesReloaded(Ljava/util/List;)V

    goto :goto_0

    .line 173
    .end local v0    # "callback":Lcom/android/settings/notification/ServiceListing$Callback;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mServices:Ljava/util/List;

    return-object v2
.end method

.method public removeCallback(Lcom/android/settings/notification/ServiceListing$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/notification/ServiceListing$Callback;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public setEnabled(Landroid/content/ComponentName;Z)V
    .locals 1
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/ServiceListing;->saveEnabledServices()V

    .line 187
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ServiceListing;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 66
    iget-boolean v1, p0, Lcom/android/settings/notification/ServiceListing;->mListening:Z

    if-ne v1, p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/notification/ServiceListing;->mListening:Z

    .line 68
    iget-boolean v1, p0, Lcom/android/settings/notification/ServiceListing;->mListening:Z

    if-eqz v1, :cond_1

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 80
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/notification/ServiceListing;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/notification/ServiceListing;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
