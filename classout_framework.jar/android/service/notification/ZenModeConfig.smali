.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$Diff;,
        Landroid/service/notification/ZenModeConfig$Migration;,
        Landroid/service/notification/ZenModeConfig$XmlV1;,
        Landroid/service/notification/ZenModeConfig$ZenRule;,
        Landroid/service/notification/ZenModeConfig$EventInfo;,
        Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    }
.end annotation


# static fields
.field public static final ACTION_DND_CHANGED:Ljava/lang/String; = "android.intent.action.DND_CHANGED"

.field private static final ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_CALLS_FROM:Ljava/lang/String; = "callsFrom"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_ATT_MESSAGES_FROM:Ljava/lang/String; = "messagesFrom"

.field private static final ALLOW_ATT_REMINDERS:Ljava/lang/String; = "reminders"

.field private static final ALLOW_ATT_REPEAT_CALLERS:Ljava/lang/String; = "repeatCallers"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final AUTOMATIC_TAG:Ljava/lang/String; = "automatic"

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field public static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_MINUTES:I = 0x5a0

.field private static final DEFAULT_ALLOW_ALARMS:Z = true

.field private static final DEFAULT_ALLOW_CALLS:Z = false

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_ALLOW_MESSAGES:Z = false

.field private static final DEFAULT_ALLOW_REMINDERS:Z = false

.field private static final DEFAULT_ALLOW_REPEAT_CALLERS:Z = false

.field private static final DEFAULT_SOURCE:I = 0x1

.field public static final DND_CHECK_BY_ALARM:I = 0x5

.field public static final DND_CHECK_BY_ALLOW:I = 0x7

.field public static final DND_CHECK_BY_INIT:I = 0x6

.field public static final DND_CHECK_BY_NONE:I = 0x0

.field public static final DND_CHECK_BY_SCHEDULE_SWITCH:I = 0x1

.field public static final DND_CHECK_BY_SCHEDULE_TIME:I = 0x2

.field public static final DND_CHECK_BY_TIME_SET:I = 0x3

.field public static final DND_CHECK_BY_TIME_ZONE:I = 0x4

.field public static final EVENT_PATH:Ljava/lang/String; = "event"

.field private static final MANUAL_TAG:Ljava/lang/String; = "manual"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field public static final REASON_DND_CHANGED:Ljava/lang/String; = "reason"

.field private static final RULE_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final RULE_ATT_CONDITION_ID:Ljava/lang/String; = "conditionId"

.field private static final RULE_ATT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final RULE_ATT_ID:Ljava/lang/String; = "ruleId"

.field private static final RULE_ATT_NAME:Ljava/lang/String; = "name"

.field private static final RULE_ATT_SNOOZING:Ljava/lang/String; = "snoozing"

.field private static final RULE_ATT_ZEN:Ljava/lang/String; = "zen"

.field public static final SCHEDULE_PATH:Ljava/lang/String; = "schedule"

.field private static final SECONDS_MS:I = 0x3e8

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final TW_SCHEDULE_PATH:Ljava/lang/String; = "twschedule"

.field public static final WEEKEND_DAYS:[I

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x2

.field private static final ZEN_ATT_USER:Ljava/lang/String; = "user"

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x2710


# instance fields
.field public allowAlarms:Z

.field public allowCalls:Z

.field public allowCallsFrom:I

.field public allowEvents:Z

.field public allowMessages:Z

.field public allowMessagesFrom:I

.field public allowReminders:Z

.field public allowRepeatCallers:Z

.field public automaticRules:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation
.end field

.field public mChangeReason:I

.field public manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

.field public user:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "ZenModeConfig"

    sput-object v0, TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2a

    sput-object v0, ALL_DAYS:[I

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, WEEKNIGHT_DAYS:[I

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4a

    sput-object v0, WEEKEND_DAYS:[I

    .line 85
    invoke-static {}, generateMinuteBuckets()[I

    move-result-object v0

    sput-object v0, MINUTE_BUCKETS:[I

    .line 640
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 79
    :array_2a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 81
    :array_3c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 83
    :array_4a
    .array-data 4
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v0, p0, mChangeReason:I

    .line 139
    iput-boolean v0, p0, allowCalls:Z

    .line 140
    iput-boolean v0, p0, allowRepeatCallers:Z

    .line 141
    iput-boolean v0, p0, allowMessages:Z

    .line 142
    iput-boolean v0, p0, allowReminders:Z

    .line 143
    iput-boolean v0, p0, allowEvents:Z

    .line 145
    iput-boolean v1, p0, allowAlarms:Z

    .line 147
    iput v1, p0, allowCallsFrom:I

    .line 148
    iput v1, p0, allowMessagesFrom:I

    .line 149
    iput v0, p0, user:I

    .line 152
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, automaticRules:Landroid/util/ArrayMap;

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v6, p0, mChangeReason:I

    .line 139
    iput-boolean v6, p0, allowCalls:Z

    .line 140
    iput-boolean v6, p0, allowRepeatCallers:Z

    .line 141
    iput-boolean v6, p0, allowMessages:Z

    .line 142
    iput-boolean v6, p0, allowReminders:Z

    .line 143
    iput-boolean v6, p0, allowEvents:Z

    .line 145
    iput-boolean v5, p0, allowAlarms:Z

    .line 147
    iput v5, p0, allowCallsFrom:I

    .line 148
    iput v5, p0, allowMessagesFrom:I

    .line 149
    iput v6, p0, user:I

    .line 152
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_91

    move v4, v5

    :goto_27
    iput-boolean v4, p0, allowCalls:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_93

    move v4, v5

    :goto_30
    iput-boolean v4, p0, allowRepeatCallers:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_95

    move v4, v5

    :goto_39
    iput-boolean v4, p0, allowMessages:Z

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_97

    move v4, v5

    :goto_42
    iput-boolean v4, p0, allowReminders:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_99

    move v4, v5

    :goto_4b
    iput-boolean v4, p0, allowEvents:Z

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v5, :cond_9b

    :goto_53
    iput-boolean v5, p0, allowAlarms:Z

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, allowCallsFrom:I

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, allowMessagesFrom:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, user:I

    .line 168
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v4, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, "len":I
    if-lez v2, :cond_9d

    .line 171
    new-array v1, v2, [Ljava/lang/String;

    .line 172
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 173
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 174
    sget-object v4, Landroid/service/notification/ZenModeConfig$ZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_83
    if-ge v0, v2, :cond_9d

    .line 176
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    aget-object v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_91
    move v4, v6

    .line 157
    goto :goto_27

    :cond_93
    move v4, v6

    .line 158
    goto :goto_30

    :cond_95
    move v4, v6

    .line 159
    goto :goto_39

    :cond_97
    move v4, v6

    .line 160
    goto :goto_42

    :cond_99
    move v4, v6

    .line 161
    goto :goto_4b

    :cond_9b
    move v5, v6

    .line 163
    goto :goto_53

    .line 180
    .restart local v2    # "len":I
    :cond_9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, mChangeReason:I

    .line 182
    return-void
.end method

.method static synthetic access$200([I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # [I

    .prologue
    .line 54
    invoke-static {p0}, toDayList([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet",
            "<TT;>;",
            "Landroid/util/ArrayMap",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_13

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 298
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 301
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method private diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .registers 13
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v8, 0x0

    .line 237
    new-instance v2, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 238
    .local v2, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-nez p1, :cond_11

    .line 239
    const-string v7, "config"

    const-string v8, "delete"

    # invokes: Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    invoke-static {v2, v7, v8}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v2

    .line 281
    .end local v2    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :goto_10
    return-object v2

    .line 241
    .restart local v2    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_11
    iget v7, p0, user:I

    iget v9, p1, user:I

    if-eq v7, v9, :cond_29

    .line 242
    const-string/jumbo v7, "user"

    iget v9, p0, user:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, user:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 244
    :cond_29
    iget-boolean v7, p0, allowCalls:Z

    iget-boolean v9, p1, allowCalls:Z

    if-eq v7, v9, :cond_40

    .line 245
    const-string v7, "allowCalls"

    iget-boolean v9, p0, allowCalls:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowCalls:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 247
    :cond_40
    iget-boolean v7, p0, allowRepeatCallers:Z

    iget-boolean v9, p1, allowRepeatCallers:Z

    if-eq v7, v9, :cond_57

    .line 248
    const-string v7, "allowRepeatCallers"

    iget-boolean v9, p0, allowRepeatCallers:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowRepeatCallers:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 250
    :cond_57
    iget-boolean v7, p0, allowMessages:Z

    iget-boolean v9, p1, allowMessages:Z

    if-eq v7, v9, :cond_6e

    .line 251
    const-string v7, "allowMessages"

    iget-boolean v9, p0, allowMessages:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowMessages:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 253
    :cond_6e
    iget v7, p0, allowCallsFrom:I

    iget v9, p1, allowCallsFrom:I

    if-eq v7, v9, :cond_85

    .line 254
    const-string v7, "allowCallsFrom"

    iget v9, p0, allowCallsFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, allowCallsFrom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 256
    :cond_85
    iget v7, p0, allowMessagesFrom:I

    iget v9, p1, allowMessagesFrom:I

    if-eq v7, v9, :cond_9c

    .line 257
    const-string v7, "allowMessagesFrom"

    iget v9, p0, allowMessagesFrom:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p1, allowMessagesFrom:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 259
    :cond_9c
    iget-boolean v7, p0, allowReminders:Z

    iget-boolean v9, p1, allowReminders:Z

    if-eq v7, v9, :cond_b3

    .line 260
    const-string v7, "allowReminders"

    iget-boolean v9, p0, allowReminders:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowReminders:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 262
    :cond_b3
    iget-boolean v7, p0, allowEvents:Z

    iget-boolean v9, p1, allowEvents:Z

    if-eq v7, v9, :cond_ca

    .line 263
    const-string v7, "allowEvents"

    iget-boolean v9, p0, allowEvents:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowEvents:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 266
    :cond_ca
    iget-boolean v7, p0, allowAlarms:Z

    iget-boolean v9, p1, allowAlarms:Z

    if-eq v7, v9, :cond_e1

    .line 267
    const-string v7, "allowAlarms"

    iget-boolean v9, p0, allowAlarms:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p1, allowAlarms:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v7, v9, v10}, Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 270
    :cond_e1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 271
    .local v1, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 272
    iget-object v7, p1, automaticRules:Landroid/util/ArrayMap;

    invoke-static {v1, v7}, addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 273
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 274
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f5
    if-ge v4, v0, :cond_13a

    .line 275
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 276
    .local v5, "rule":Ljava/lang/String;
    iget-object v7, p0, automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_136

    iget-object v7, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object v3, v7

    .line 277
    .local v3, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_10a
    iget-object v7, p1, automaticRules:Landroid/util/ArrayMap;

    if-eqz v7, :cond_138

    iget-object v7, p1, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    move-object v6, v7

    .line 278
    .local v6, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "automaticRule["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "]"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    invoke-static {v2, v7, v3, v6}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_f5

    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_136
    move-object v3, v8

    .line 276
    goto :goto_10a

    .restart local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_138
    move-object v6, v8

    .line 277
    goto :goto_117

    .line 280
    .end local v3    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "rule":Ljava/lang/String;
    :cond_13a
    const-string/jumbo v7, "manualRule"

    iget-object v8, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, p1, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    # invokes: Landroid/service/notification/ZenModeConfig$ZenRule;->appendDiff(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V
    invoke-static {v2, v7, v8, v9}, Landroid/service/notification/ZenModeConfig$ZenRule;->access$100(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    goto/16 :goto_10
.end method

.method public static diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;
    .registers 5
    .param p0, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p1, "to"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 285
    if-nez p0, :cond_11

    .line 286
    new-instance v0, Landroid/service/notification/ZenModeConfig$Diff;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$Diff;-><init>()V

    .line 287
    .local v0, "d":Landroid/service/notification/ZenModeConfig$Diff;
    if-eqz p1, :cond_10

    .line 288
    const-string v1, "config"

    const-string v2, "insert"

    # invokes: Landroid/service/notification/ZenModeConfig$Diff;->addLine(Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig$Diff;->access$000(Landroid/service/notification/ZenModeConfig$Diff;Ljava/lang/String;Ljava/lang/String;)Landroid/service/notification/ZenModeConfig$Diff;

    .line 292
    .end local v0    # "d":Landroid/service/notification/ZenModeConfig$Diff;
    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0, p1}, diff(Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object v0

    goto :goto_10
.end method

.method private static generateMinuteBuckets()[I
    .registers 5

    .prologue
    const/16 v4, 0xf

    .line 331
    const/16 v2, 0xc

    .line 332
    .local v2, "maxHrs":I
    new-array v0, v4, [I

    .line 333
    .local v0, "buckets":[I
    const/4 v3, 0x0

    aput v4, v0, v3

    .line 334
    const/4 v3, 0x1

    const/16 v4, 0x1e

    aput v4, v0, v3

    .line 335
    const/4 v3, 0x2

    const/16 v4, 0x2d

    aput v4, v0, v3

    .line 336
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_14
    const/16 v3, 0xc

    if-gt v1, v3, :cond_21

    .line 337
    add-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x3c

    aput v4, v0, v3

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 339
    :cond_21
    return-object v0
.end method

.method private static getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;
    .registers 24
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "useLine1"    # Z
    .param p4, "shortVersion"    # Z

    .prologue
    .line 985
    if-nez p1, :cond_5

    const-string v14, ""

    .line 1014
    :cond_4
    :goto_4
    return-object v14

    .line 986
    :cond_5
    move-object/from16 v0, p1

    iget-object v3, v0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_5d

    .line 987
    move-object/from16 v0, p1

    iget-object v3, v0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v11, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 988
    .local v11, "id":Landroid/net/Uri;
    if-nez v11, :cond_1d

    .line 989
    const v3, 0x104058c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 991
    :cond_1d
    invoke-static {v11}, tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 992
    .local v4, "time":J
    move-object/from16 v0, p1

    iget-object v3, v0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 993
    .local v9, "c":Landroid/service/notification/Condition;
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_48

    .line 994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 995
    .local v12, "now":J
    sub-long v16, v4, v12

    .line 996
    .local v16, "span":J
    move-wide/from16 v0, v16

    long-to-float v3, v0

    const v6, 0x476a6000    # 60000.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v9

    .line 999
    .end local v12    # "now":J
    .end local v16    # "span":J
    :cond_48
    if-nez v9, :cond_55

    const-string v14, ""

    .line 1000
    .local v14, "rt":Ljava/lang/String;
    :goto_4c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v14, ""

    goto :goto_4

    .line 999
    .end local v14    # "rt":Ljava/lang/String;
    :cond_55
    if-eqz p3, :cond_5a

    iget-object v14, v9, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_4c

    :cond_5a
    iget-object v14, v9, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    goto :goto_4c

    .line 1002
    .end local v4    # "time":J
    .end local v9    # "c":Landroid/service/notification/Condition;
    .end local v11    # "id":Landroid/net/Uri;
    :cond_5d
    const-string v15, ""

    .line 1003
    .local v15, "summary":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_6b
    :goto_6b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1004
    .local v2, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1005
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1006
    iget-object v15, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    goto :goto_6b

    .line 1008
    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x104058e

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v15, v7, v8

    const/4 v8, 0x1

    iget-object v0, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_6b

    .end local v2    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_9f
    move-object v14, v15

    .line 1014
    goto/16 :goto_4
.end method

.method public static getConditionSummary(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZ)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 980
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, getConditionLine(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "userHandle"    # I

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EEE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5e

    const-string v4, "Hm"

    :goto_16
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    .local v3, "skeleton":Ljava/lang/String;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 767
    .local v1, "now":Ljava/util/GregorianCalendar;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 768
    .local v0, "endTime":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 769
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_51

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_51

    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_51

    .line 772
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_61

    const-string v3, "Hm"

    .line 774
    :cond_51
    :goto_51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 775
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 765
    .end local v0    # "endTime":Ljava/util/GregorianCalendar;
    .end local v1    # "now":Ljava/util/GregorianCalendar;
    .end local v2    # "pattern":Ljava/lang/String;
    .end local v3    # "skeleton":Ljava/lang/String;
    :cond_5e
    const-string v4, "hma"

    goto :goto_16

    .line 772
    .restart local v0    # "endTime":Ljava/util/GregorianCalendar;
    .restart local v1    # "now":Ljava/util/GregorianCalendar;
    .restart local v3    # "skeleton":Ljava/lang/String;
    :cond_61
    const-string v3, "hma"

    goto :goto_51
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 317
    if-eqz p0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    invoke-static {p0}, sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 807
    invoke-static {p0}, tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidEventConditionId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 902
    invoke-static {p0}, tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidHour(I)Z
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 582
    if-ltz p0, :cond_8

    const/16 v0, 0x18

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 2
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 313
    if-eqz p0, :cond_10

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isValidMinute(I)Z
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 586
    if-ltz p0, :cond_8

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 828
    invoke-static {p0}, tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static isValidSource(I)Z
    .registers 2
    .param p0, "source"    # I

    .prologue
    .line 590
    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static prioritySendersToSource(II)I
    .registers 2
    .param p0, "prioritySenders"    # I
    .param p1, "def"    # I

    .prologue
    .line 687
    packed-switch p0, :pswitch_data_a

    .line 691
    .end local p1    # "def":I
    :goto_3
    return p1

    .line 688
    .restart local p1    # "def":I
    :pswitch_4
    const/4 p1, 0x1

    goto :goto_3

    .line 689
    :pswitch_6
    const/4 p1, 0x2

    goto :goto_3

    .line 690
    :pswitch_8
    const/4 p1, 0x0

    goto :goto_3

    .line 687
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 555
    const-string v0, "id"

    invoke-static {p0, v0}, safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 556
    .local v1, "id":Landroid/net/Uri;
    if-nez v1, :cond_c

    move-object v0, v9

    .line 567
    :goto_b
    return-object v0

    .line 557
    :cond_c
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "summary":Ljava/lang/String;
    const-string v0, "line1"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "line1":Ljava/lang/String;
    const-string v0, "line2"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 560
    .local v4, "line2":Ljava/lang/String;
    const-string v0, "icon"

    invoke-static {p0, v0, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 561
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 562
    .local v6, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 564
    .local v7, "flags":I
    :try_start_32
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_b

    .line 565
    :catch_38
    move-exception v8

    .line 566
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, TAG:Ljava/lang/String;

    const-string v10, "Unable to read condition xml"

    invoke-static {v0, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 567
    goto :goto_b
.end method

.method public static readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;
    .registers 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 520
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 521
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 522
    const-string/jumbo v3, "snoozing"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 523
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 524
    const-string/jumbo v3, "zen"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "zen":Ljava/lang/String;
    invoke-static {v1, v5}, tryParseZenMode(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 526
    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v3, v5, :cond_4e

    .line 527
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad zen mode in rule xml:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 533
    .end local v0    # "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_4d
    return-object v0

    .line 530
    .restart local v0    # "rt":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_4e
    const-string v2, "conditionId"

    invoke-static {p0, v2}, safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 531
    const-string v2, "component"

    invoke-static {p0, v2}, safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 532
    invoke-static {p0}, readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    goto :goto_4d
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;Landroid/service/notification/ZenModeConfig$Migration;)Landroid/service/notification/ZenModeConfig;
    .registers 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "migration"    # Landroid/service/notification/ZenModeConfig$Migration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 429
    .local v7, "type":I
    const/4 v10, 0x2

    if-eq v7, v10, :cond_9

    const/4 v5, 0x0

    .line 442
    :cond_8
    :goto_8
    return-object v5

    .line 430
    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 431
    .local v6, "tag":Ljava/lang/String;
    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    const/4 v5, 0x0

    goto :goto_8

    .line 432
    :cond_18
    new-instance v5, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v5}, <init>()V

    .line 433
    .local v5, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v10, "version"

    const/4 v11, 0x2

    invoke-static {p0, v10, v11}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 434
    .local v9, "version":I
    const/4 v10, 0x1

    if-ne v9, v10, :cond_31

    .line 435
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig$XmlV1;->readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$XmlV1;

    move-result-object v8

    .line 436
    .local v8, "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    invoke-interface {p1, v8}, Landroid/service/notification/ZenModeConfig$Migration;->migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;

    move-result-object v5

    goto :goto_8

    .line 438
    .end local v8    # "v1":Landroid/service/notification/ZenModeConfig$XmlV1;
    :cond_31
    const-string/jumbo v10, "user"

    iget v11, v5, user:I

    invoke-static {p0, v10, v11}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    iput v10, v5, user:I

    .line 439
    :cond_3c
    :goto_3c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v10, 0x1

    if-eq v7, v10, :cond_11f

    .line 440
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 441
    const/4 v10, 0x3

    if-ne v7, v10, :cond_53

    const-string/jumbo v10, "zen"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 444
    :cond_53
    const/4 v10, 0x2

    if-ne v7, v10, :cond_3c

    .line 445
    const-string v10, "allow"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 446
    const-string v10, "calls"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowCalls:Z

    .line 447
    const-string/jumbo v10, "repeatCallers"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowRepeatCallers:Z

    .line 449
    const-string/jumbo v10, "messages"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowMessages:Z

    .line 450
    const-string/jumbo v10, "reminders"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowReminders:Z

    .line 452
    const-string v10, "events"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowEvents:Z

    .line 454
    const-string v10, "alarms"

    const/4 v11, 0x1

    invoke-static {p0, v10, v11}, safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v5, allowAlarms:Z

    .line 456
    const-string v10, "from"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    .line 457
    .local v2, "from":I
    const-string v10, "callsFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 458
    .local v1, "callsFrom":I
    const-string/jumbo v10, "messagesFrom"

    const/4 v11, -0x1

    invoke-static {p0, v10, v11}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .line 459
    .local v4, "messagesFrom":I
    invoke-static {v1}, isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_bf

    invoke-static {v4}, isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 460
    iput v1, v5, allowCallsFrom:I

    .line 461
    iput v4, v5, allowMessagesFrom:I

    goto/16 :goto_3c

    .line 462
    :cond_bf
    invoke-static {v2}, isValidSource(I)Z

    move-result v10

    if-eqz v10, :cond_e7

    .line 463
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Migrating existing shared \'from\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, sourceToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iput v2, v5, allowCallsFrom:I

    .line 465
    iput v2, v5, allowMessagesFrom:I

    goto/16 :goto_3c

    .line 467
    :cond_e7
    const/4 v10, 0x1

    iput v10, v5, allowCallsFrom:I

    .line 468
    const/4 v10, 0x1

    iput v10, v5, allowMessagesFrom:I

    goto/16 :goto_3c

    .line 470
    .end local v1    # "callsFrom":I
    .end local v2    # "from":I
    .end local v4    # "messagesFrom":I
    :cond_ef
    const-string/jumbo v10, "manual"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_100

    .line 471
    invoke-static {p0}, readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v10

    iput-object v10, v5, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto/16 :goto_3c

    .line 472
    :cond_100
    const-string v10, "automatic"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 473
    const/4 v10, 0x0

    const-string/jumbo v11, "ruleId"

    invoke-interface {p0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "id":Ljava/lang/String;
    invoke-static {p0}, readRuleXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    .line 475
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    if-eqz v3, :cond_3c

    if-eqz v0, :cond_3c

    .line 476
    iget-object v10, v5, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v10, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3c

    .line 481
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_11f
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Failed to reach END_DOCUMENT"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 594
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 596
    .end local p2    # "defValue":Z
    :goto_b
    return p2

    .restart local p2    # "defValue":Z
    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_b
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 605
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 607
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 600
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 611
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 613
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_b
.end method

.method private static sameCondition(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .registers 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 322
    if-nez p0, :cond_5

    .line 326
    :cond_4
    :goto_4
    return v1

    .line 323
    :cond_5
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v2, :cond_11

    .line 324
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_f

    :goto_d
    move v1, v0

    goto :goto_4

    :cond_f
    move v0, v1

    goto :goto_d

    .line 326
    :cond_11
    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v3, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_21
    move v1, v0

    goto :goto_4
.end method

.method private static sourceToPrioritySenders(II)I
    .registers 2
    .param p0, "source"    # I
    .param p1, "def"    # I

    .prologue
    .line 678
    packed-switch p0, :pswitch_data_a

    .line 682
    .end local p1    # "def":I
    :goto_3
    return p1

    .line 679
    .restart local p1    # "def":I
    :pswitch_4
    const/4 p1, 0x0

    goto :goto_3

    .line 680
    :pswitch_6
    const/4 p1, 0x1

    goto :goto_3

    .line 681
    :pswitch_8
    const/4 p1, 0x2

    goto :goto_3

    .line 678
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .prologue
    .line 343
    packed-switch p0, :pswitch_data_10

    .line 351
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 345
    :pswitch_6
    const-string v0, "anyone"

    goto :goto_5

    .line 347
    :pswitch_9
    const-string v0, "contacts"

    goto :goto_5

    .line 349
    :pswitch_c
    const-string/jumbo v0, "stars"

    goto :goto_5

    .line 343
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 787
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static toDayList([I)Ljava/lang/String;
    .registers 4
    .param p0, "days"    # [I

    .prologue
    .line 386
    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_8

    :cond_5
    const-string v2, ""

    .line 392
    :goto_7
    return-object v2

    .line 387
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 389
    if-lez v0, :cond_18

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_18
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 392
    :cond_20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7
.end method

.method public static toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;
    .registers 5
    .param p0, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 892
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "userId"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "calendar"

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_2d
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "reply"

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_43
    const-string v0, ""

    goto :goto_2d
.end method

.method public static toNextAlarmCondition(Landroid/content/Context;JJI)Landroid/service/notification/Condition;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "now"    # J
    .param p3, "alarm"    # J
    .param p5, "userHandle"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 756
    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {p0, v0, v1, v2}, getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v11

    .line 757
    .local v11, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 758
    .local v12, "res":Landroid/content/res/Resources;
    const v3, 0x104058b

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v11, v5, v8

    invoke-virtual {v12, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "line1":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v4

    .line 760
    .local v4, "id":Landroid/net/Uri;
    new-instance v3, Landroid/service/notification/Condition;

    const-string v5, ""

    const-string v7, ""

    move v10, v9

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v3
.end method

.method public static toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;
    .registers 5
    .param p0, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    .line 818
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "days"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v2}, toDayList([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(Landroid/content/Context;IIZ)Landroid/service/notification/Condition;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutesFromNow"    # I
    .param p2, "userHandle"    # I
    .param p3, "shortVersion"    # Z

    .prologue
    .line 714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 715
    .local v10, "now":J
    if-nez p1, :cond_13

    const-wide/16 v8, 0x2710

    .line 716
    .local v8, "millis":J
    :goto_8
    add-long v2, v10, v8

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    .line 715
    .end local v8    # "millis":J
    :cond_13
    const v0, 0xea60

    mul-int/2addr v0, p1

    int-to-long v8, v0

    goto :goto_8
.end method

.method public static toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minutes"    # I
    .param p4, "userHandle"    # I
    .param p5, "shortVersion"    # Z

    .prologue
    .line 723
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, getFormattedTime(Landroid/content/Context;JI)Ljava/lang/CharSequence;

    move-result-object v12

    .line 724
    .local v12, "formattedTime":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 725
    .local v15, "res":Landroid/content/res/Resources;
    const/16 v4, 0x3c

    move/from16 v0, p3

    if-ge v0, v4, :cond_66

    .line 727
    move/from16 v14, p3

    .line 728
    .local v14, "num":I
    if-eqz p5, :cond_5e

    const v16, 0x114000a

    .line 730
    .local v16, "summaryResId":I
    :goto_1b
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "summary":Ljava/lang/String;
    if-eqz p5, :cond_62

    const v13, 0x114000e

    .line 733
    .local v13, "line1ResId":I
    :goto_33
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 734
    .local v7, "line1":Ljava/lang/String;
    const v4, 0x104058a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 749
    .end local v13    # "line1ResId":I
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    .local v8, "line2":Ljava/lang/String;
    :goto_51
    invoke-static/range {p1 .. p2}, toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v5

    .line 750
    .local v5, "id":Landroid/net/Uri;
    new-instance v4, Landroid/service/notification/Condition;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v4 .. v11}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v4

    .line 728
    .end local v5    # "id":Landroid/net/Uri;
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .restart local v14    # "num":I
    :cond_5e
    const v16, 0x1140009

    goto :goto_1b

    .line 731
    .restart local v6    # "summary":Ljava/lang/String;
    .restart local v16    # "summaryResId":I
    :cond_62
    const v13, 0x114000d

    goto :goto_33

    .line 735
    .end local v6    # "summary":Ljava/lang/String;
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_66
    const/16 v4, 0x5a0

    move/from16 v0, p3

    if-ge v0, v4, :cond_ba

    .line 737
    move/from16 v0, p3

    int-to-float v4, v0

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 738
    .restart local v14    # "num":I
    if-eqz p5, :cond_b2

    const v16, 0x114000c

    .line 740
    .restart local v16    # "summaryResId":I
    :goto_7b
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    move/from16 v0, v16

    invoke-virtual {v15, v0, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 741
    .restart local v6    # "summary":Ljava/lang/String;
    if-eqz p5, :cond_b6

    const v13, 0x1140010

    .line 743
    .restart local v13    # "line1ResId":I
    :goto_93
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v12, v4, v9

    invoke-virtual {v15, v13, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 744
    .restart local v7    # "line1":Ljava/lang/String;
    const v4, 0x104058a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 745
    .restart local v8    # "line2":Ljava/lang/String;
    goto :goto_51

    .line 738
    .end local v6    # "summary":Ljava/lang/String;
    .end local v7    # "line1":Ljava/lang/String;
    .end local v8    # "line2":Ljava/lang/String;
    .end local v13    # "line1ResId":I
    .end local v16    # "summaryResId":I
    :cond_b2
    const v16, 0x114000b

    goto :goto_7b

    .line 741
    .restart local v6    # "summary":Ljava/lang/String;
    .restart local v16    # "summaryResId":I
    :cond_b6
    const v13, 0x114000f

    goto :goto_93

    .line 747
    .end local v6    # "summary":Ljava/lang/String;
    .end local v14    # "num":I
    .end local v16    # "summaryResId":I
    :cond_ba
    const v4, 0x104058a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v12, v9, v10

    invoke-virtual {v15, v4, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "line2":Ljava/lang/String;
    move-object v7, v8

    .restart local v7    # "line1":Ljava/lang/String;
    move-object v6, v8

    .restart local v6    # "summary":Ljava/lang/String;
    goto :goto_51
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .registers 7
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, 0x0

    .line 795
    const-string v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 802
    :cond_a
    :goto_a
    return-wide v2

    .line 796
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    const-string v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 799
    :try_start_27
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_35} :catch_37

    move-result-wide v2

    goto :goto_a

    .line 800
    :catch_37
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 9
    .param p0, "dayList"    # Ljava/lang/String;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 396
    if-nez p0, :cond_6

    move-object v2, v4

    .line 405
    :cond_5
    :goto_5
    return-object v2

    .line 397
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "tokens":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_f

    move-object v2, v4

    goto :goto_5

    .line 399
    :cond_f
    array-length v5, v3

    new-array v2, v5, [I

    .line 400
    .local v2, "rt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 401
    aget-object v5, v3, v1

    invoke-static {v5, v6}, tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 402
    .local v0, "day":I
    if-ne v0, v6, :cond_20

    move-object v2, v4

    goto :goto_5

    .line 403
    :cond_20
    aput v0, v2, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public static tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 11
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 906
    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v5, "condition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_3f

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "event"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 911
    .local v0, "isEvent":Z
    :goto_3b
    if-nez v0, :cond_41

    move-object v1, v3

    .line 919
    :goto_3e
    return-object v1

    .end local v0    # "isEvent":Z
    :cond_3f
    move v0, v4

    .line 906
    goto :goto_3b

    .line 912
    .restart local v0    # "isEvent":Z
    :cond_41
    new-instance v1, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 913
    .local v1, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    const-string/jumbo v2, "userId"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, -0x2710

    invoke-static {v2, v5}, tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 914
    const-string v2, "calendar"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 915
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2, v8, v9}, tryParseLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-eqz v2, :cond_71

    .line 916
    :cond_6f
    iput-object v3, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 918
    :cond_71
    const-string/jumbo v2, "reply"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, tryParseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    goto :goto_3e
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 961
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 966
    :cond_a
    :goto_a
    return-object v3

    .line 962
    :cond_b
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 963
    .local v1, "i":I
    if-lt v1, v7, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_a

    .line 964
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 965
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 966
    .local v2, "minute":I
    invoke-static {v0}, isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v2}, isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    goto :goto_a
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 409
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 413
    .end local p1    # "defValue":I
    :goto_6
    return p1

    .line 411
    .restart local p1    # "defValue":I
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_6

    .line 412
    :catch_10
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method private static tryParseLong(Ljava/lang/String;J)J
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # J

    .prologue
    .line 418
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 422
    .end local p1    # "defValue":J
    :goto_6
    return-wide p1

    .line 420
    .restart local p1    # "defValue":J
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-wide p1

    goto :goto_6

    .line 421
    :catch_10
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method public static tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 9
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 832
    if-eqz p0, :cond_3e

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v7, "condition"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_3e

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, "schedule"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    move v1, v5

    .line 837
    .local v1, "isSchedule":Z
    :goto_3b
    if-nez v1, :cond_40

    .line 847
    :cond_3d
    :goto_3d
    return-object v2

    .end local v1    # "isSchedule":Z
    :cond_3e
    move v1, v6

    .line 832
    goto :goto_3b

    .line 838
    .restart local v1    # "isSchedule":Z
    :cond_40
    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v3

    .line 839
    .local v3, "start":[I
    const-string v4, "end"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v0

    .line 840
    .local v0, "end":[I
    if-eqz v3, :cond_3d

    if-eqz v0, :cond_3d

    .line 841
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 842
    .local v2, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    const-string v4, "days"

    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\."

    invoke-static {v4, v7}, tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 843
    aget v4, v3, v6

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 844
    aget v4, v3, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 845
    aget v4, v0, v6

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 846
    aget v4, v0, v5

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    goto :goto_3d
.end method

.method private static tryParseZenMode(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 970
    invoke-static {p0, p1}, tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 971
    .local v0, "rt":I
    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .end local v0    # "rt":I
    :goto_a
    return v0

    .restart local v0    # "rt":I
    :cond_b
    move v0, p1

    goto :goto_a
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 572
    const-string v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 573
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 574
    const-string v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 575
    const-string v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 576
    const-string v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 577
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const-string v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    return-void
.end method

.method public static writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p0, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 537
    const-string v0, "enabled"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    const-string/jumbo v0, "snoozing"

    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 539
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 540
    const-string/jumbo v0, "name"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    :cond_24
    const-string/jumbo v0, "zen"

    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v0, :cond_3f

    .line 544
    const-string v0, "component"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 546
    :cond_3f
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_4e

    .line 547
    const-string v0, "conditionId"

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    :cond_4e
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_57

    .line 550
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {v0, p1}, writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 552
    :cond_57
    return-void
.end method


# virtual methods
.method public applyNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    .registers 5
    .param p1, "policy"    # Landroid/app/NotificationManager$Policy;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 696
    if-nez p1, :cond_5

    .line 706
    :goto_4
    return-void

    .line 697
    :cond_5
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_46

    move v0, v1

    :goto_c
    iput-boolean v0, p0, allowCalls:Z

    .line 698
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_48

    move v0, v1

    :goto_15
    iput-boolean v0, p0, allowMessages:Z

    .line 699
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_1e
    iput-boolean v0, p0, allowEvents:Z

    .line 700
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_27
    iput-boolean v0, p0, allowReminders:Z

    .line 701
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4e

    :goto_2f
    iput-boolean v1, p0, allowRepeatCallers:Z

    .line 703
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v1, p0, allowCallsFrom:I

    invoke-static {v0, v1}, prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, allowCallsFrom:I

    .line 704
    iget v0, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v1, p0, allowMessagesFrom:I

    invoke-static {v0, v1}, prioritySendersToSource(II)I

    move-result v0

    iput v0, p0, allowMessagesFrom:I

    goto :goto_4

    :cond_46
    move v0, v2

    .line 697
    goto :goto_c

    :cond_48
    move v0, v2

    .line 698
    goto :goto_15

    :cond_4a
    move v0, v2

    .line 699
    goto :goto_1e

    :cond_4c
    move v0, v2

    .line 700
    goto :goto_27

    :cond_4e
    move v1, v2

    .line 701
    goto :goto_2f
.end method

.method public copy()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 632
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, writeToParcel(Landroid/os/Parcel;I)V

    .line 633
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 634
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, <init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    instance-of v3, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_8

    move v1, v2

    .line 360
    :cond_7
    :goto_7
    return v1

    .line 358
    :cond_8
    if-eq p1, p0, :cond_7

    move-object v0, p1

    .line 359
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 360
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v0, allowCalls:Z

    iget-boolean v4, p0, allowCalls:Z

    if-ne v3, v4, :cond_57

    iget-boolean v3, v0, allowRepeatCallers:Z

    iget-boolean v4, p0, allowRepeatCallers:Z

    if-ne v3, v4, :cond_57

    iget-boolean v3, v0, allowMessages:Z

    iget-boolean v4, p0, allowMessages:Z

    if-ne v3, v4, :cond_57

    iget v3, v0, allowCallsFrom:I

    iget v4, p0, allowCallsFrom:I

    if-ne v3, v4, :cond_57

    iget v3, v0, allowMessagesFrom:I

    iget v4, p0, allowMessagesFrom:I

    if-ne v3, v4, :cond_57

    iget-boolean v3, v0, allowReminders:Z

    iget-boolean v4, p0, allowReminders:Z

    if-ne v3, v4, :cond_57

    iget-boolean v3, v0, allowEvents:Z

    iget-boolean v4, p0, allowEvents:Z

    if-ne v3, v4, :cond_57

    iget-boolean v3, v0, allowAlarms:Z

    iget-boolean v4, p0, allowAlarms:Z

    if-ne v3, v4, :cond_57

    iget v3, v0, user:I

    iget v4, p0, user:I

    if-ne v3, v4, :cond_57

    iget-object v3, v0, automaticRules:Landroid/util/ArrayMap;

    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    iget-object v3, v0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_57
    move v1, v2

    goto :goto_7
.end method

.method public getAutomaticRuleNames()Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 618
    .local v1, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 619
    iget-object v2, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 621
    :cond_1e
    return-object v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 377
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-boolean v2, p0, allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, automaticRules:Landroid/util/ArrayMap;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 304
    iget-object v2, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, isValidManualRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_b

    move v2, v3

    .line 309
    :goto_a
    return v2

    .line 305
    :cond_b
    iget-object v2, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 306
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_27

    .line 307
    iget-object v2, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v2}, isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v2

    if-nez v2, :cond_24

    move v2, v3

    goto :goto_a

    .line 306
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 309
    :cond_27
    const/4 v2, 0x1

    goto :goto_a
.end method

.method public newRuleId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 975
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 5

    .prologue
    .line 654
    const/4 v1, 0x0

    .line 655
    .local v1, "priorityCategories":I
    const/4 v0, 0x1

    .line 656
    .local v0, "priorityCallSenders":I
    const/4 v2, 0x1

    .line 657
    .local v2, "priorityMessageSenders":I
    iget-boolean v3, p0, allowCalls:Z

    if-eqz v3, :cond_9

    .line 658
    or-int/lit8 v1, v1, 0x8

    .line 660
    :cond_9
    iget-boolean v3, p0, allowMessages:Z

    if-eqz v3, :cond_f

    .line 661
    or-int/lit8 v1, v1, 0x4

    .line 663
    :cond_f
    iget-boolean v3, p0, allowEvents:Z

    if-eqz v3, :cond_15

    .line 664
    or-int/lit8 v1, v1, 0x2

    .line 666
    :cond_15
    iget-boolean v3, p0, allowReminders:Z

    if-eqz v3, :cond_1b

    .line 667
    or-int/lit8 v1, v1, 0x1

    .line 669
    :cond_1b
    iget-boolean v3, p0, allowRepeatCallers:Z

    if-eqz v3, :cond_21

    .line 670
    or-int/lit8 v1, v1, 0x10

    .line 672
    :cond_21
    iget v3, p0, allowCallsFrom:I

    invoke-static {v3, v0}, sourceToPrioritySenders(II)I

    move-result v0

    .line 673
    iget v3, p0, allowMessagesFrom:I

    invoke-static {v3, v2}, sourceToPrioritySenders(II)I

    move-result v2

    .line 674
    new-instance v3, Landroid/app/NotificationManager$Policy;

    invoke-direct {v3, v1, v0, v2}, Landroid/app/NotificationManager$Policy;-><init>(III)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, user:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowCalls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowRepeatCallers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowRepeatCallers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowMessages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowMessages:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowCallsFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, allowCallsFrom:I

    invoke-static {v1}, sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowMessagesFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, allowMessagesFrom:I

    invoke-static {v1}, sourceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowReminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowReminders:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowEvents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowAlarms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, allowAlarms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",automaticRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",manualRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 186
    iget-boolean v4, p0, allowCalls:Z

    if-eqz v4, :cond_71

    move v4, v5

    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-boolean v4, p0, allowRepeatCallers:Z

    if-eqz v4, :cond_73

    move v4, v5

    :goto_f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-boolean v4, p0, allowMessages:Z

    if-eqz v4, :cond_75

    move v4, v5

    :goto_17
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-boolean v4, p0, allowReminders:Z

    if-eqz v4, :cond_77

    move v4, v5

    :goto_1f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-boolean v4, p0, allowEvents:Z

    if-eqz v4, :cond_79

    move v4, v5

    :goto_27
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-boolean v4, p0, allowAlarms:Z

    if-eqz v4, :cond_7b

    :goto_2e
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v4, p0, allowCallsFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v4, p0, allowMessagesFrom:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v4, p0, user:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v4, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 198
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8c

    .line 199
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 200
    .local v2, "len":I
    new-array v1, v2, [Ljava/lang/String;

    .line 201
    .local v1, "ids":[Ljava/lang/String;
    new-array v3, v2, [Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 202
    .local v3, "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_58
    if-ge v0, v2, :cond_7d

    .line 203
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v1, v0

    .line 204
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    aput-object v4, v3, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_71
    move v4, v6

    .line 186
    goto :goto_7

    :cond_73
    move v4, v6

    .line 187
    goto :goto_f

    :cond_75
    move v4, v6

    .line 188
    goto :goto_17

    :cond_77
    move v4, v6

    .line 189
    goto :goto_1f

    :cond_79
    move v4, v6

    .line 190
    goto :goto_27

    :cond_7b
    move v5, v6

    .line 192
    goto :goto_2e

    .line 206
    .restart local v0    # "i":I
    .restart local v1    # "ids":[Ljava/lang/String;
    .restart local v2    # "len":I
    .restart local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_7d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 213
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rules":[Landroid/service/notification/ZenModeConfig$ZenRule;
    :goto_86
    iget v4, p0, mChangeReason:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return-void

    .line 210
    :cond_8c
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_86
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 485
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 487
    const-string/jumbo v4, "user"

    iget v5, p0, user:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    const-string v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 490
    const-string v4, "calls"

    iget-boolean v5, p0, allowCalls:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 491
    const-string/jumbo v4, "repeatCallers"

    iget-boolean v5, p0, allowRepeatCallers:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 492
    const-string/jumbo v4, "messages"

    iget-boolean v5, p0, allowMessages:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    const-string/jumbo v4, "reminders"

    iget-boolean v5, p0, allowReminders:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 494
    const-string v4, "events"

    iget-boolean v5, p0, allowEvents:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 496
    const-string v4, "alarms"

    iget-boolean v5, p0, allowAlarms:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    const-string v4, "callsFrom"

    iget v5, p0, allowCallsFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    const-string/jumbo v4, "messagesFrom"

    iget v5, p0, allowMessagesFrom:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const-string v4, "allow"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    iget-object v4, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_99

    .line 503
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 504
    iget-object v4, p0, manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-static {v4, p1}, writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 505
    const-string/jumbo v4, "manual"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    :cond_99
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 508
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a0
    if-ge v2, v0, :cond_c8

    .line 509
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 510
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 511
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const-string v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 512
    const-string/jumbo v4, "ruleId"

    invoke-interface {p1, v6, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    invoke-static {v1, p1}, writeRuleXml(Landroid/service/notification/ZenModeConfig$ZenRule;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 514
    const-string v4, "automatic"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    .line 516
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "id":Ljava/lang/String;
    :cond_c8
    const-string/jumbo v4, "zen"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 517
    return-void
.end method
