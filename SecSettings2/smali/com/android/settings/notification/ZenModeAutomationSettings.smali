.class public Lcom/android/settings/notification/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mServiceListing:Lcom/android/settings/notification/ServiceListing;

.field private final mServiceListingCallback:Lcom/android/settings/notification/ServiceListing$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 317
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$5;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    .line 301
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$4;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/settings/notification/ServiceListing$Callback;

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenModeAutomationSettings;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/ComponentName;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ZenModeAutomationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->showAddRuleDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeAutomationSettings;)Lcom/android/settings/notification/ServiceListing;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeAutomationSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method private computeCalendarName(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 217
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f0e0e65

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private computeContiguousDayRanges([I)Ljava/lang/String;
    .locals 13
    .param p1, "days"    # [I

    .prologue
    .line 241
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 242
    .local v2, "daySet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-eqz p1, :cond_0

    array-length v8, p1

    if-ge v4, v8, :cond_0

    .line 243
    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 246
    const v8, 0x7f0e0e6f

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    :cond_1
    :goto_1
    return-object v5

    .line 248
    :cond_2
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    array-length v0, v8

    .line 249
    .local v0, "N":I
    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 250
    const v8, 0x7f0e0e70

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 252
    :cond_3
    const/4 v5, 0x0

    .line 253
    .local v5, "rt":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_1

    .line 254
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    aget v6, v8, v4

    .line 255
    .local v6, "startDay":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 256
    .local v1, "active":Z
    if-nez v1, :cond_4

    .line 253
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 257
    :cond_4
    const/4 v3, 0x0

    .line 258
    .local v3, "end":I
    :goto_4
    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v9, v4, v3

    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 261
    :cond_5
    if-nez v4, :cond_6

    sget-object v8, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int/lit8 v9, v0, -0x1

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 262
    :cond_6
    if-nez v3, :cond_8

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "v":Ljava/lang/String;
    :goto_5
    if-nez v5, :cond_9

    move-object v5, v7

    .line 268
    .end local v7    # "v":Ljava/lang/String;
    :cond_7
    :goto_6
    add-int/2addr v4, v3

    goto :goto_3

    .line 262
    :cond_8
    const v8, 0x7f0e0e74

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    add-int v12, v4, v3

    rem-int/2addr v12, v0

    aget v11, v11, v12

    invoke-direct {p0, v11}, Lcom/android/settings/notification/ZenModeAutomationSettings;->dayString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 266
    .restart local v7    # "v":Ljava/lang/String;
    :cond_9
    const v8, 0x7f0e0e73

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6
.end method

.method private computeEventRuleSummary(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 209
    const v2, 0x7f0e0e64

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeCalendarName(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "calendar":Ljava/lang/String;
    const v2, 0x7f0e0e66

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeReply(Landroid/service/notification/ZenModeConfig$EventInfo;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "reply":Ljava/lang/String;
    const v2, 0x7f0e0e6d

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private computeReply(Landroid/service/notification/ZenModeConfig$EventInfo;)I
    .locals 3
    .param p1, "event"    # Landroid/service/notification/ZenModeConfig$EventInfo;

    .prologue
    .line 222
    iget v0, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    packed-switch v0, :pswitch_data_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad reply: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :pswitch_0
    const v0, 0x7f0e0e69

    .line 228
    :goto_0
    return v0

    .line 226
    :pswitch_1
    const v0, 0x7f0e0e6b

    goto :goto_0

    .line 228
    :pswitch_2
    const v0, 0x7f0e0e6a

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;
    .locals 7
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    if-nez v4, :cond_1

    :cond_0
    const v4, 0x7f0e0e93

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    :goto_0
    return-object v4

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "mode":Ljava/lang/String;
    const v4, 0x7f0e0e92

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v2

    .line 191
    .local v2, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    .line 192
    .local v0, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-eqz v2, :cond_3

    .line 193
    invoke-direct {p0, v2}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeScheduleRuleSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;

    move-result-object v3

    .line 197
    :cond_2
    :goto_1
    const v4, 0x7f0e0e6d

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 194
    :cond_3
    if-eqz v0, :cond_2

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeEventRuleSummary(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private computeScheduleRuleSummary(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Ljava/lang/String;
    .locals 9
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 201
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {p0, v4}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeContiguousDayRanges([I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "days":Ljava/lang/String;
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "start":Ljava/lang/String;
    iget v4, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v5, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getTime(II)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "end":Ljava/lang/String;
    const v4, 0x7f0e0e75

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "time":Ljava/lang/String;
    const v4, 0x7f0e0e6d

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v3, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "zenMode"    # I

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 297
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    const v0, 0x7f0e0e1c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :pswitch_1
    const v0, 0x7f0e0e1b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :pswitch_2
    const v0, 0x7f0e0e1d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private dayString(I)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 280
    .local v0, "c":Lcom/android/settings/notification/ManagedServiceSettings$Config;
    const-string v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 281
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 282
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 283
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 284
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 285
    return-object v0
.end method

.method private getTime(II)Ljava/lang/String;
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddRuleDialog()V
    .locals 6

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$1;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->getAutomaticRuleNames()Landroid/util/ArraySet;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeAutomationSettings$1;->show()V

    .line 115
    return-void
.end method

.method private showRule(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "settingsAction"    # Ljava/lang/String;
    .param p2, "configurationActivity"    # Landroid/content/ComponentName;
    .param p3, "ruleId"    # Ljava/lang/String;
    .param p4, "ruleName"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/settings/notification/ZenModeAutomationSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showRule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "rule_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method private sortedRules()[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    .locals 4

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-array v1, v3, [Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .line 127
    .local v1, "rt":[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 128
    new-instance v2, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings$1;)V

    .line 129
    .local v2, "zri":Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 130
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iput-object v3, v2, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 131
    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "zri":Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    :cond_0
    sget-object v3, Lcom/android/settings/notification/ZenModeAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 134
    return-object v1
.end method

.method private updateControls()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 139
    .local v8, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 140
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->sortedRules()[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    move-result-object v9

    .line 142
    .local v9, "sortedRules":[Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v9

    if-ge v6, v0, :cond_3

    .line 143
    aget-object v0, v9, v6

    iget-object v4, v0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->id:Ljava/lang/String;

    .line 144
    .local v4, "id":Ljava/lang/String;
    aget-object v0, v9, v6

    iget-object v5, v0, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 145
    .local v5, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    .line 146
    .local v2, "isSchedule":Z
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v3

    .line 147
    .local v3, "isEvent":Z
    new-instance v7, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v7, "p":Landroid/preference/Preference;
    if-eqz v2, :cond_1

    const v0, 0x7f020145

    :goto_2
    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 151
    iget-object v0, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0, v5}, Lcom/android/settings/notification/ZenModeAutomationSettings;->computeRuleSummary(Landroid/service/notification/ZenModeConfig$ZenRule;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 154
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;ZZLjava/lang/String;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 148
    :cond_1
    if-eqz v3, :cond_2

    const v0, 0x7f020125

    goto :goto_2

    :cond_2
    const v0, 0x7f020131

    goto :goto_2

    .line 166
    .end local v2    # "isSchedule":Z
    .end local v3    # "isEvent":Z
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v7    # "p":Landroid/preference/Preference;
    :cond_3
    new-instance v7, Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 167
    .restart local v7    # "p":Landroid/preference/Preference;
    const v0, 0x7f02010e

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 168
    const v0, 0x7f0e0e58

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 169
    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 170
    new-instance v0, Lcom/android/settings/notification/ZenModeAutomationSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenModeAutomationSettings$3;-><init>(Lcom/android/settings/notification/ZenModeAutomationSettings;)V

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 178
    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x8e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->addPreferencesFromResource(I)V

    .line 67
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/settings/notification/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/settings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->addCallback(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAutomationSettings;->mServiceListingCallback:Lcom/android/settings/notification/ServiceListing$Callback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->removeCallback(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 94
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeAutomationSettings;->updateControls()V

    .line 88
    return-void
.end method
