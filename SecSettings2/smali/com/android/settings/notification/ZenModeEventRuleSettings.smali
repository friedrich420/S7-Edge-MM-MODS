.class public Lcom/android/settings/notification/ZenModeEventRuleSettings;
.super Lcom/android/settings/notification/ZenModeRuleSettingsBase;
.source "ZenModeEventRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    }
.end annotation


# static fields
.field private static final CALENDAR_NAME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalendar:Lcom/android/settings/DropDownPreference;

.field private mCalendars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCreate:Z

.field private mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

.field private mReply:Lcom/android/settings/DropDownPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;-><init>()V

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeEventRuleSettings;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addCalendars(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "outCalendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    const/4 v3, 0x1

    .line 184
    const-string v8, "\"primary\""

    .line 185
    .local v8, "primary":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "calendar_displayName"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "(account_name=ownerAccount) AS \"primary\""

    aput-object v1, v2, v0

    .line 187
    .local v2, "projection":[Ljava/lang/String;
    const-string v9, "\"primary\" = 1"

    .line 188
    .local v9, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 190
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "\"primary\" = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 192
    if-nez v7, :cond_1

    .line 202
    if-eqz v7, :cond_0

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    new-instance v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    invoke-direct {v6}, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;-><init>()V

    .line 197
    .local v6, "ci":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, v6, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    .line 199
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 202
    .end local v6    # "ci":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 202
    :cond_3
    if-eqz v7, :cond_0

    .line 203
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getCalendars(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;>;"
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 166
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {p0, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 167
    .local v3, "userContext":Landroid/content/Context;
    if-eqz v3, :cond_0

    .line 168
    invoke-static {v3, v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addCalendars(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 171
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v3    # "userContext":Landroid/content/Context;
    :cond_1
    sget-object v4, Lcom/android/settings/notification/ZenModeEventRuleSettings;->CALENDAR_NAME:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 177
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "calendar"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "calendar":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 213
    iget v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "calendar"    # Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .prologue
    .line 209
    iget v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->userId:I

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reloadCalendar()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getCalendars(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    .line 81
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    invoke-virtual {v4}, Lcom/android/settings/DropDownPreference;->clearItems()V

    .line 82
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    const v5, 0x7f0e0e67

    const/4 v6, 0x0

    invoke-static {v6, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 83
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget-object v1, v4, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 84
    .local v1, "eventCalendar":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 85
    .local v2, "found":Z
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendars:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;

    .line 86
    .local v0, "calendar":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    iget-object v5, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    const/4 v2, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "calendar":Lcom/android/settings/notification/ZenModeEventRuleSettings$CalendarInfo;
    :cond_2
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 92
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v5, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/android/settings/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    :cond_3
    return-void
.end method


# virtual methods
.method protected getEnabledToastText()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0e0e62

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 149
    const/16 v0, 0x92

    return v0
.end method

.method protected getZenModeDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateInternal()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 98
    iput-boolean v4, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 99
    const v1, 0x7f0800ef

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 102
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "calendar"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    .line 103
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 119
    const-string v1, "reply"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/DropDownPreference;

    iput-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0e69

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0e6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    const v2, 0x7f0e0e6b

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    new-instance v2, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;-><init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateControlsInternal()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onResume()V

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->reloadCalendar()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCreate:Z

    .line 77
    return-void
.end method

.method protected setRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 55
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected updateControlsInternal()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mCalendar:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->key(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mReply:Lcom/android/settings/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 145
    return-void
.end method
