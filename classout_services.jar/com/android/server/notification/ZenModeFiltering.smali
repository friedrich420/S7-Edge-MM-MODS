.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$1;,
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    .line 41
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$1;)V

    sput-object v0, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private static audienceMatches(IF)Z
    .registers 6
    .param p0, "source"    # I
    .param p1, "contactAffinity"    # F

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 266
    packed-switch p0, :pswitch_data_2e

    .line 274
    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_1d
    :goto_1d
    :pswitch_1d
    return v0

    .line 270
    :pswitch_1e
    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1d

    move v0, v1

    goto :goto_1d

    .line 272
    :pswitch_26
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1d

    move v0, v1

    goto :goto_1d

    .line 266
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 121
    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x4

    .line 223
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioStream(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    .line 255
    .local v1, "userId":I
    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    :cond_b
    const/4 v2, 0x0

    .line 258
    :goto_c
    return v2

    .line 256
    :cond_d
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sms_default_application"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "defaultApp":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_c
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v1, :cond_35

    .line 243
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 245
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    :goto_15
    iput-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 246
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default phone app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_35
    if-eqz p1, :cond_4b

    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v1, :cond_4b

    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    :goto_48
    return v1

    .line 245
    .restart local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_49
    const/4 v1, 0x0

    goto :goto_15

    .line 248
    .end local v0    # "telecomm":Landroid/telecom/TelecomManager;
    :cond_4b
    const/4 v1, 0x0

    goto :goto_48
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 229
    const-string/jumbo v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 262
    const-string/jumbo v0, "msg"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, isDefaultMessagingApp(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 233
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 219
    const-string/jumbo v0, "sys"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 81
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 92
    :cond_5
    :goto_5
    return v1

    .line 82
    :cond_6
    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    .line 83
    if-ne p1, v2, :cond_2a

    .line 84
    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_19

    sget-object v3, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # invokes: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    invoke-static {v3, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v1, v2

    goto :goto_5

    .line 85
    :cond_19
    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_5

    .line 86
    if-eqz p5, :cond_2a

    .line 87
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 89
    .local v0, "contactAffinity":F
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v1, v0}, audienceMatches(IF)Z

    move-result v1

    goto :goto_5

    .end local v0    # "contactAffinity":F
    :cond_2a
    move v1, v2

    .line 92
    goto :goto_5
.end method

.method public static matchesMessageFilter(Landroid/content/Context;ILandroid/service/notification/ZenModeConfig;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "validator"    # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"    # I
    .param p7, "timeoutAffinity"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    const/4 v3, 0x2

    if-ne p1, v3, :cond_6

    .line 116
    :cond_5
    :goto_5
    return v1

    .line 107
    :cond_6
    const/4 v3, 0x3

    if-eq p1, v3, :cond_5

    .line 108
    if-ne p1, v2, :cond_1c

    .line 109
    iget-boolean v3, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_5

    .line 110
    if-eqz p5, :cond_1c

    .line 111
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result v0

    .line 113
    .local v0, "contactAffinity":F
    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v1, v0}, audienceMatches(IF)Z

    move-result v1

    goto :goto_5

    .end local v0    # "contactAffinity":F
    :cond_1c
    move v1, v2

    .line 116
    goto :goto_5
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "source"    # I
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, audienceMatches(IF)Z

    move-result v0

    if-nez v0, :cond_11

    .line 212
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDefaultPhoneApp="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    sget-object v1, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 55
    sget-object v2, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    monitor-enter v2

    .line 56
    :try_start_22
    sget-object v1, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    sget-object v1, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_79

    .line 59
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 60
    sget-object v1, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    const-string v1, " at "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    sget-object v1, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    # getter for: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mCalls:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, ts(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 65
    .end local v0    # "i":I
    :cond_79
    monitor-exit v2

    .line 66
    return-void

    .line 65
    :catchall_7b
    move-exception v1

    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_22 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 237
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public shouldIntercept(ILandroid/service/notification/ZenModeConfig;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "zen"    # I
    .param p2, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p3, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    invoke-static {p3}, isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 206
    :cond_8
    :goto_8
    return v0

    .line 129
    :cond_9
    packed-switch p1, :pswitch_data_d6

    goto :goto_8

    .line 150
    :pswitch_d
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_30

    .line 151
    const-string/jumbo v1, "priorityApp"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_8

    .line 132
    :pswitch_1b
    const-string/jumbo v0, "none"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 133
    goto :goto_8

    .line 135
    :pswitch_23
    invoke-static {p3}, isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 139
    const-string v0, "alarmsOnly"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 140
    goto :goto_8

    .line 155
    :cond_30
    invoke-static {p3}, isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 156
    const-string/jumbo v2, "isAlarm"

    invoke-static {p3, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 157
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-nez v2, :cond_8

    .line 158
    const-string v0, "!allowAlarms"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 159
    goto :goto_8

    .line 166
    :cond_47
    invoke-virtual {p0, p3}, isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 167
    const-string/jumbo v2, "isCall"

    invoke-static {p3, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 168
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v2, :cond_6c

    sget-object v2, REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {p3}, extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v4

    # invokes: Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 170
    const-string/jumbo v1, "repeatCaller"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    goto :goto_8

    .line 173
    :cond_6c
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v0, :cond_77

    .line 174
    const-string v0, "!allowCalls"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 175
    goto :goto_8

    .line 177
    :cond_77
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v0, p3}, shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto :goto_8

    .line 179
    :cond_7e
    invoke-direct {p0, p3}, isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 180
    const-string/jumbo v0, "isMessage"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 181
    iget-boolean v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v0, :cond_96

    .line 182
    const-string v0, "!allowMessages"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 183
    goto/16 :goto_8

    .line 185
    :cond_96
    iget v0, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v0, p3}, shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    goto/16 :goto_8

    .line 187
    :cond_9e
    invoke-static {p3}, isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 188
    const-string/jumbo v2, "isEvent"

    invoke-static {p3, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 189
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_8

    .line 190
    const-string v0, "!allowEvents"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 191
    goto/16 :goto_8

    .line 195
    :cond_b6
    invoke-static {p3}, isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 196
    const-string/jumbo v2, "isReminders"

    invoke-static {p3, v2}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 197
    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-nez v2, :cond_8

    .line 198
    const-string v0, "!allowReminders"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 199
    goto/16 :goto_8

    .line 203
    :cond_ce
    const-string v0, "!priority"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    move v0, v1

    .line 204
    goto/16 :goto_8

    .line 129
    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_d
        :pswitch_1b
        :pswitch_23
    .end packed-switch
.end method
