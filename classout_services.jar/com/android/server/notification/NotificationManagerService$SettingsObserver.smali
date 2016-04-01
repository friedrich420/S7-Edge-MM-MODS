.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

.field private final NOTIFICATION_REMINDER_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1018
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1019
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1002
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1008
    const-string/jumbo v0, "led_indicator_missed_event"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    .line 1012
    const-string/jumbo v0, "notification_reminder_led_indicator"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    .line 1015
    const-string/jumbo v0, "notification_reminder_selectable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, NOTIFICATION_REMINDER_URI:Landroid/net/Uri;

    .line 1020
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1023
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1024
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1027
    iget-object v1, p0, LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1031
    iget-object v1, p0, NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1034
    iget-object v1, p0, NOTIFICATION_REMINDER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1037
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, update(Landroid/net/Uri;)V

    .line 1038
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1041
    invoke-virtual {p0, p2}, update(Landroid/net/Uri;)V

    .line 1042
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1045
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1046
    .local v4, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_17

    iget-object v7, p0, NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 1047
    :cond_17
    const-string/jumbo v7, "notification_light_pulse"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_cd

    move v3, v5

    .line 1049
    .local v3, "pulseEnabled":Z
    :goto_21
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eq v7, v3, :cond_33

    .line 1050
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v7, v3}, Lcom/android/server/notification/NotificationManagerService;->access$2402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1051
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1055
    .end local v3    # "pulseEnabled":Z
    :cond_33
    if-eqz p1, :cond_3d

    iget-object v7, p0, LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1056
    :cond_3d
    const-string/jumbo v7, "led_indicator_missed_event"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_d0

    move v0, v5

    .line 1058
    .local v0, "missedLightEnabled":Z
    :goto_47
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eq v7, v0, :cond_59

    .line 1059
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationLightEnabled:Z
    invoke-static {v7, v0}, Lcom/android/server/notification/NotificationManagerService;->access$2502(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1060
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1065
    .end local v0    # "missedLightEnabled":Z
    :cond_59
    if-eqz p1, :cond_63

    iget-object v7, p0, NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 1066
    :cond_63
    const-string/jumbo v7, "notification_reminder_led_indicator"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_d3

    move v2, v5

    .line 1068
    .local v2, "missedRemindLightEnabled":Z
    :goto_6d
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    if-eq v7, v2, :cond_87

    .line 1069
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z
    invoke-static {v7, v2}, Lcom/android/server/notification/NotificationManagerService;->access$2602(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1070
    const-string v7, "NotificationService"

    const-string/jumbo v8, "update() : NOTIFICATION_REMINDER_LED_INDICATOR"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1075
    .end local v2    # "missedRemindLightEnabled":Z
    :cond_87
    if-eqz p1, :cond_91

    iget-object v7, p0, NOTIFICATION_REMINDER_URI:Landroid/net/Uri;

    invoke-virtual {v7, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 1076
    :cond_91
    const-string/jumbo v7, "notification_reminder_selectable"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_d5

    move v1, v5

    .line 1078
    .local v1, "missedRemindEnabled":Z
    :goto_9b
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    if-eq v5, v1, :cond_cc

    .line 1079
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z
    invoke-static {v5, v1}, Lcom/android/server/notification/NotificationManagerService;->access$2702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1080
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update() : NOTIFICATION_REMINDER state changed / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationReminder:Z
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v5, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1084
    .end local v1    # "missedRemindEnabled":Z
    :cond_cc
    return-void

    :cond_cd
    move v3, v6

    .line 1047
    goto/16 :goto_21

    :cond_d0
    move v0, v6

    .line 1056
    goto/16 :goto_47

    :cond_d3
    move v2, v6

    .line 1066
    goto :goto_6d

    :cond_d5
    move v1, v6

    .line 1076
    goto :goto_9b
.end method
