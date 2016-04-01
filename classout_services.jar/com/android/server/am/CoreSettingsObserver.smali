.class final Lcom/android/server/am/CoreSettingsObserver;
.super Landroid/database/ContentObserver;
.source "CoreSettingsObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private final mCoreSettings:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 34
    const-class v0, Lcom/android/server/am/CoreSettingsObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sSecureSettingToTypeMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sSystemSettingToTypeMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sGlobalSettingToTypeMap:Ljava/util/Map;

    .line 44
    sget-object v0, sSecureSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "long_press_timeout"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, sSystemSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "time_12_24"

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, sGlobalSettingToTypeMap:Ljava/util/Map;

    const-string/jumbo v1, "debug_view_attributes"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 59
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, mCoreSettings:Landroid/os/Bundle;

    .line 60
    iput-object p1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 61
    invoke-direct {p0}, beginObserveCoreSettings()V

    .line 62
    invoke-direct {p0}, sendCoreSettings()V

    .line 63
    return-void
.end method

.method private beginObserveCoreSettings()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 84
    sget-object v3, sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    .local v1, "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 86
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_b

    .line 90
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_27
    sget-object v3, sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_31

    .line 96
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4d
    sget-object v3, sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .restart local v1    # "setting":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    .restart local v2    # "uri":Landroid/net/Uri;
    iget-object v3, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_57

    .line 101
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_73
    return-void
.end method

.method private populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V
    .registers 15
    .param p1, "snapshot"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 104
    iget-object v5, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 105
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 107
    .local v3, "setting":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 108
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_52

    .line 110
    sget-object v5, sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_3c

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "value":Ljava/lang/String;
    :goto_38
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 112
    .end local v6    # "value":Ljava/lang/String;
    :cond_3c
    sget-object v5, sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_49

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_38

    .line 115
    .end local v6    # "value":Ljava/lang/String;
    :cond_49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_38

    .line 118
    .end local v6    # "value":Ljava/lang/String;
    :cond_52
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_7c

    .line 120
    sget-object v5, sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_66

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 127
    .local v6, "value":I
    :goto_62
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_10

    .line 122
    .end local v6    # "value":I
    :cond_66
    sget-object v5, sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_73

    .line 123
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_62

    .line 125
    .end local v6    # "value":I
    :cond_73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_62

    .line 128
    .end local v6    # "value":I
    :cond_7c
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_a6

    .line 130
    sget-object v5, sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_90

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .line 137
    .local v6, "value":F
    :goto_8c
    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_10

    .line 132
    .end local v6    # "value":F
    :cond_90
    sget-object v5, sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_9d

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .restart local v6    # "value":F
    goto :goto_8c

    .line 135
    .end local v6    # "value":F
    :cond_9d
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v8}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    .restart local v6    # "value":F
    goto :goto_8c

    .line 138
    .end local v6    # "value":F
    :cond_a6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_10

    .line 140
    sget-object v5, sSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_bb

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 147
    .local v6, "value":J
    :goto_b6
    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_10

    .line 142
    .end local v6    # "value":J
    :cond_bb
    sget-object v5, sSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_c8

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .restart local v6    # "value":J
    goto :goto_b6

    .line 145
    .end local v6    # "value":J
    :cond_c8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .restart local v6    # "value":J
    goto :goto_b6

    .line 150
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v3    # "setting":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "value":J
    :cond_d1
    return-void
.end method

.method private sendCoreSettings()V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, mCoreSettings:Landroid/os/Bundle;

    sget-object v1, sSecureSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 78
    iget-object v0, p0, mCoreSettings:Landroid/os/Bundle;

    sget-object v1, sSystemSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 79
    iget-object v0, p0, mCoreSettings:Landroid/os/Bundle;

    sget-object v1, sGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, populateSettings(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 80
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->onCoreSettingsChange(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method


# virtual methods
.method public getCoreSettingsLocked()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, mCoreSettings:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 71
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 72
    :try_start_3
    invoke-direct {p0}, sendCoreSettings()V

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 73
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method
