.class public Lcom/android/server/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AUTO_BRIGHTNESS_ADJ:I = 0x88b8

.field public static final BACKUP_AGENT_FAILURE:I = 0xb07

.field public static final BACKUP_DATA_CHANGED:I = 0xb04

.field public static final BACKUP_INITIALIZE:I = 0xb0b

.field public static final BACKUP_PACKAGE:I = 0xb08

.field public static final BACKUP_RESET:I = 0xb0a

.field public static final BACKUP_START:I = 0xb05

.field public static final BACKUP_SUCCESS:I = 0xb09

.field public static final BACKUP_TRANSPORT_FAILURE:I = 0xb06

.field public static final BACKUP_TRANSPORT_LIFECYCLE:I = 0xb22

.field public static final BATTERY_DISCHARGE:I = 0xaaa

.field public static final BATTERY_LEVEL:I = 0xaa2

.field public static final BATTERY_STATUS:I = 0xaa3

.field public static final BOOT_PROGRESS_ENABLE_SCREEN:I = 0x791f

.field public static final BOOT_PROGRESS_PMS_DATA_SCAN_START:I = 0xc08

.field public static final BOOT_PROGRESS_PMS_READY:I = 0xc1c

.field public static final BOOT_PROGRESS_PMS_SCAN_END:I = 0xc12

.field public static final BOOT_PROGRESS_PMS_START:I = 0xbf4

.field public static final BOOT_PROGRESS_PMS_SYSTEM_SCAN_START:I = 0xbfe

.field public static final BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field public static final CACHE_FILE_DELETED:I = 0xabc

.field public static final CAMERA_GESTURE_TRIGGERED:I = 0x9ca4

.field public static final CONFIG_INSTALL_FAILED:I = 0xc864

.field public static final CONNECTIVITY_STATE_CHANGED:I = 0xc364

.field public static final DEVICE_IDLE:I = 0x84d0

.field public static final DEVICE_IDLE_OFF_COMPLETE:I = 0x84d8

.field public static final DEVICE_IDLE_OFF_PHASE:I = 0x84d7

.field public static final DEVICE_IDLE_OFF_START:I = 0x84d6

.field public static final DEVICE_IDLE_ON_COMPLETE:I = 0x84d5

.field public static final DEVICE_IDLE_ON_PHASE:I = 0x84d4

.field public static final DEVICE_IDLE_ON_START:I = 0x84d3

.field public static final DEVICE_IDLE_STEP:I = 0x84d1

.field public static final DEVICE_IDLE_WAKE_FROM_IDLE:I = 0x84d2

.field public static final FREE_STORAGE_CHANGED:I = 0xab8

.field public static final FREE_STORAGE_LEFT:I = 0xaba

.field public static final FSTRIM_FINISH:I = 0xac4

.field public static final FSTRIM_START:I = 0xac3

.field public static final FULL_BACKUP_AGENT_FAILURE:I = 0xb19

.field public static final FULL_BACKUP_PACKAGE:I = 0xb18

.field public static final FULL_BACKUP_SUCCESS:I = 0xb1b

.field public static final FULL_BACKUP_TRANSPORT_FAILURE:I = 0xb1a

.field public static final FULL_RESTORE_PACKAGE:I = 0xb1c

.field public static final IDLE_MAINTENANCE_WINDOW_FINISH:I = 0xc92d

.field public static final IDLE_MAINTENANCE_WINDOW_START:I = 0xc92c

.field public static final IFW_INTENT_MATCHED:I = 0xc8c8

.field public static final IMF_FORCE_RECONNECT_IME:I = 0x7d00

.field public static final LOCKDOWN_VPN_CONNECTED:I = 0xc801

.field public static final LOCKDOWN_VPN_CONNECTING:I = 0xc800

.field public static final LOCKDOWN_VPN_ERROR:I = 0xc802

.field public static final LOW_STORAGE:I = 0xab9

.field public static final NETSTATS_MOBILE_SAMPLE:I = 0xc79c

.field public static final NETSTATS_WIFI_SAMPLE:I = 0xc79d

.field public static final NOTIFICATION_ACTION_CLICKED:I = 0x6b81

.field public static final NOTIFICATION_ALERT:I = 0x6b8c

.field public static final NOTIFICATION_CANCEL:I = 0xabf

.field public static final NOTIFICATION_CANCELED:I = 0x6b8a

.field public static final NOTIFICATION_CANCEL_ALL:I = 0xac0

.field public static final NOTIFICATION_CLICKED:I = 0x6b80

.field public static final NOTIFICATION_ENQUEUE:I = 0xabe

.field public static final NOTIFICATION_EXPANSION:I = 0x6b77

.field public static final NOTIFICATION_PANEL_HIDDEN:I = 0x6b6d

.field public static final NOTIFICATION_PANEL_REVEALED:I = 0x6b6c

.field public static final NOTIFICATION_VISIBILITY:I = 0x6b8b

.field public static final NOTIFICATION_VISIBILITY_CHANGED:I = 0x6b76

.field public static final PM_CRITICAL_INFO:I = 0xc30

.field public static final POWER_PARTIAL_WAKE_STATE:I = 0xaa9

.field public static final POWER_SCREEN_BROADCAST_DONE:I = 0xaa6

.field public static final POWER_SCREEN_BROADCAST_SEND:I = 0xaa5

.field public static final POWER_SCREEN_BROADCAST_STOP:I = 0xaa7

.field public static final POWER_SCREEN_STATE:I = 0xaa8

.field public static final POWER_SLEEP_REQUESTED:I = 0xaa4

.field public static final RESTORE_AGENT_FAILURE:I = 0xb10

.field public static final RESTORE_PACKAGE:I = 0xb11

.field public static final RESTORE_START:I = 0xb0e

.field public static final RESTORE_SUCCESS:I = 0xb12

.field public static final RESTORE_TRANSPORT_FAILURE:I = 0xb0f

.field public static final STREAM_DEVICES_CHANGED:I = 0x9c41

.field public static final UNKNOWN_SOURCES_ENABLED:I = 0xc26

.field public static final VOLUME_CHANGED:I = 0x9c40

.field public static final WATCHDOG:I = 0xaf2

.field public static final WATCHDOG_HARD_RESET:I = 0xaf5

.field public static final WATCHDOG_MEMINFO:I = 0xaf9

.field public static final WATCHDOG_PROC_PSS:I = 0xaf3

.field public static final WATCHDOG_PROC_STATS:I = 0xaf7

.field public static final WATCHDOG_PSS_STATS:I = 0xaf6

.field public static final WATCHDOG_REQUESTED_REBOOT:I = 0xafb

.field public static final WATCHDOG_SCHEDULED_REBOOT:I = 0xaf8

.field public static final WATCHDOG_SOFT_RESET:I = 0xaf4

.field public static final WATCHDOG_VMSTAT:I = 0xafa

.field public static final WM_HOME_STACK_MOVED:I = 0x791d

.field public static final WM_NO_SURFACE_MEMORY:I = 0x7918

.field public static final WM_STACK_CREATED:I = 0x791c

.field public static final WM_STACK_REMOVED:I = 0x791e

.field public static final WM_TASK_CREATED:I = 0x7919

.field public static final WM_TASK_MOVED:I = 0x791a

.field public static final WM_TASK_REMOVED:I = 0x791b

.field public static final WP_WALLPAPER_CRASHED:I = 0x80e8


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAutoBrightnessAdj(FFFFFFFF)V
    .registers 12
    .param p0, "oldAdj"    # F
    .param p1, "oldLux"    # F
    .param p2, "oldBrightness"    # F
    .param p3, "oldGamma"    # F
    .param p4, "newAdj"    # F
    .param p5, "newLux"    # F
    .param p6, "newBrightness"    # F
    .param p7, "newGamma"    # F

    .prologue
    .line 629
    const v0, 0x88b8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 630
    return-void
.end method

.method public static writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 457
    const/16 v0, 0xb07

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 458
    return-void
.end method

.method public static writeBackupDataChanged(Ljava/lang/String;)V
    .registers 2
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 445
    const/16 v0, 0xb04

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 446
    return-void
.end method

.method public static writeBackupInitialize()V
    .registers 2

    .prologue
    .line 473
    const/16 v0, 0xb0b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 474
    return-void
.end method

.method public static writeBackupPackage(Ljava/lang/String;I)V
    .registers 6
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 461
    const/16 v0, 0xb08

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 462
    return-void
.end method

.method public static writeBackupReset(Ljava/lang/String;)V
    .registers 2
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 469
    const/16 v0, 0xb0a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 470
    return-void
.end method

.method public static writeBackupStart(Ljava/lang/String;)V
    .registers 2
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 449
    const/16 v0, 0xb05

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 450
    return-void
.end method

.method public static writeBackupSuccess(II)V
    .registers 6
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 465
    const/16 v0, 0xb09

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 466
    return-void
.end method

.method public static writeBackupTransportFailure(Ljava/lang/String;)V
    .registers 2
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 453
    const/16 v0, 0xb06

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 454
    return-void
.end method

.method public static writeBackupTransportLifecycle(Ljava/lang/String;I)V
    .registers 6
    .param p0, "transport"    # Ljava/lang/String;
    .param p1, "bound"    # I

    .prologue
    .line 517
    const/16 v0, 0xb22

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 518
    return-void
.end method

.method public static writeBatteryDischarge(JII)V
    .registers 8
    .param p0, "duration"    # J
    .param p2, "minlevel"    # I
    .param p3, "maxlevel"    # I

    .prologue
    .line 313
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 314
    return-void
.end method

.method public static writeBatteryLevel(III)V
    .registers 7
    .param p0, "level"    # I
    .param p1, "voltage"    # I
    .param p2, "temperature"    # I

    .prologue
    .line 305
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 306
    return-void
.end method

.method public static writeBatteryStatus(IIIILjava/lang/String;)V
    .registers 9
    .param p0, "status"    # I
    .param p1, "health"    # I
    .param p2, "present"    # I
    .param p3, "plugged"    # I
    .param p4, "technology"    # Ljava/lang/String;

    .prologue
    .line 309
    const/16 v0, 0xaa3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 310
    return-void
.end method

.method public static writeBootProgressEnableScreen(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 581
    const/16 v0, 0x791f

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 582
    return-void
.end method

.method public static writeBootProgressPmsDataScanStart(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 533
    const/16 v0, 0xc08

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 534
    return-void
.end method

.method public static writeBootProgressPmsReady(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 541
    const/16 v0, 0xc1c

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 542
    return-void
.end method

.method public static writeBootProgressPmsScanEnd(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 537
    const/16 v0, 0xc12

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 538
    return-void
.end method

.method public static writeBootProgressPmsStart(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 525
    const/16 v0, 0xbf4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 526
    return-void
.end method

.method public static writeBootProgressPmsSystemScanStart(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 529
    const/16 v0, 0xbfe

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 530
    return-void
.end method

.method public static writeBootProgressSystemRun(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 521
    const/16 v0, 0xbc2

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 522
    return-void
.end method

.method public static writeCacheFileDeleted(Ljava/lang/String;)V
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 353
    const/16 v0, 0xabc

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 354
    return-void
.end method

.method public static writeCameraGestureTriggered(JJJI)V
    .registers 11
    .param p0, "gestureOnTime"    # J
    .param p2, "sensor1OnTime"    # J
    .param p4, "sensor2OnTime"    # J
    .param p6, "eventExtra"    # I

    .prologue
    .line 689
    const v0, 0x9ca4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 690
    return-void
.end method

.method public static writeConfigInstallFailed(Ljava/lang/String;)V
    .registers 2
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 657
    const v0, 0xc864

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 658
    return-void
.end method

.method public static writeConnectivityStateChanged(III)V
    .registers 7
    .param p0, "type"    # I
    .param p1, "subtype"    # I
    .param p2, "state"    # I

    .prologue
    .line 633
    const v0, 0xc364

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 634
    return-void
.end method

.method public static writeDeviceIdle(ILjava/lang/String;)V
    .registers 6
    .param p0, "state"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 593
    const v0, 0x84d0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 594
    return-void
.end method

.method public static writeDeviceIdleOffComplete()V
    .registers 2

    .prologue
    .line 625
    const v0, 0x84d8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 626
    return-void
.end method

.method public static writeDeviceIdleOffPhase(Ljava/lang/String;)V
    .registers 2
    .param p0, "what"    # Ljava/lang/String;

    .prologue
    .line 621
    const v0, 0x84d7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 622
    return-void
.end method

.method public static writeDeviceIdleOffStart(Ljava/lang/String;)V
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 617
    const v0, 0x84d6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 618
    return-void
.end method

.method public static writeDeviceIdleOnComplete()V
    .registers 2

    .prologue
    .line 613
    const v0, 0x84d5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 614
    return-void
.end method

.method public static writeDeviceIdleOnPhase(Ljava/lang/String;)V
    .registers 2
    .param p0, "what"    # Ljava/lang/String;

    .prologue
    .line 609
    const v0, 0x84d4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 610
    return-void
.end method

.method public static writeDeviceIdleOnStart()V
    .registers 2

    .prologue
    .line 605
    const v0, 0x84d3

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 606
    return-void
.end method

.method public static writeDeviceIdleStep()V
    .registers 2

    .prologue
    .line 597
    const v0, 0x84d1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 598
    return-void
.end method

.method public static writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V
    .registers 6
    .param p0, "isIdle"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 601
    const v0, 0x84d2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 602
    return-void
.end method

.method public static writeFreeStorageChanged(J)V
    .registers 4
    .param p0, "data"    # J

    .prologue
    .line 341
    const/16 v0, 0xab8

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 342
    return-void
.end method

.method public static writeFreeStorageLeft(JJJ)V
    .registers 10
    .param p0, "data"    # J
    .param p2, "system"    # J
    .param p4, "cache"    # J

    .prologue
    .line 349
    const/16 v0, 0xaba

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 350
    return-void
.end method

.method public static writeFstrimFinish(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 677
    const/16 v0, 0xac4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 678
    return-void
.end method

.method public static writeFstrimStart(J)V
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 673
    const/16 v0, 0xac3

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 674
    return-void
.end method

.method public static writeFullBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 501
    const/16 v0, 0xb19

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 502
    return-void
.end method

.method public static writeFullBackupPackage(Ljava/lang/String;)V
    .registers 2
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 497
    const/16 v0, 0xb18

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 498
    return-void
.end method

.method public static writeFullBackupSuccess(Ljava/lang/String;)V
    .registers 2
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 509
    const/16 v0, 0xb1b

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 510
    return-void
.end method

.method public static writeFullBackupTransportFailure()V
    .registers 2

    .prologue
    .line 505
    const/16 v0, 0xb1a

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 506
    return-void
.end method

.method public static writeFullRestorePackage(Ljava/lang/String;)V
    .registers 2
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 513
    const/16 v0, 0xb1c

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 514
    return-void
.end method

.method public static writeIdleMaintenanceWindowFinish(JJII)V
    .registers 10
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 669
    const v0, 0xc92d

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 670
    return-void
.end method

.method public static writeIdleMaintenanceWindowStart(JJII)V
    .registers 10
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 665
    const v0, 0xc92c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 666
    return-void
.end method

.method public static writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p0, "intentType"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerPkgCount"    # I
    .param p4, "callerPkgs"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "uri"    # Ljava/lang/String;
    .param p8, "flags"    # I

    .prologue
    .line 661
    const v0, 0xc8c8

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 662
    return-void
.end method

.method public static writeImfForceReconnectIme([Ljava/lang/Object;JI)V
    .registers 9
    .param p0, "ime"    # [Ljava/lang/Object;
    .param p1, "timeSinceConnect"    # J
    .param p3, "showing"    # I

    .prologue
    .line 585
    const/16 v0, 0x7d00

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 586
    return-void
.end method

.method public static writeLockdownVpnConnected(I)V
    .registers 2
    .param p0, "egressNet"    # I

    .prologue
    .line 649
    const v0, 0xc801

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 650
    return-void
.end method

.method public static writeLockdownVpnConnecting(I)V
    .registers 2
    .param p0, "egressNet"    # I

    .prologue
    .line 645
    const v0, 0xc800

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 646
    return-void
.end method

.method public static writeLockdownVpnError(I)V
    .registers 2
    .param p0, "egressNet"    # I

    .prologue
    .line 653
    const v0, 0xc802

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 654
    return-void
.end method

.method public static writeLowStorage(J)V
    .registers 4
    .param p0, "data"    # J

    .prologue
    .line 345
    const/16 v0, 0xab9

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 346
    return-void
.end method

.method public static writeNetstatsMobileSample(JJJJJJJJJJJJJ)V
    .registers 30
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 637
    const v0, 0xc79c

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 638
    return-void
.end method

.method public static writeNetstatsWifiSample(JJJJJJJJJJJJJ)V
    .registers 30
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 641
    const v0, 0xc79d

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 642
    return-void
.end method

.method public static writeNotificationActionClicked(Ljava/lang/String;IIII)V
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "actionIndex"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I

    .prologue
    .line 389
    const/16 v0, 0x6b81

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 390
    return-void
.end method

.method public static writeNotificationAlert(Ljava/lang/String;III)V
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "buzz"    # I
    .param p2, "beep"    # I
    .param p3, "blink"    # I

    .prologue
    .line 401
    const/16 v0, 0x6b8c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 402
    return-void
.end method

.method public static writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V
    .registers 14
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "userid"    # I
    .param p6, "requiredFlags"    # I
    .param p7, "forbiddenFlags"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Ljava/lang/String;

    .prologue
    .line 361
    const/16 v0, 0xabf

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object p9, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 362
    return-void
.end method

.method public static writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V
    .registers 12
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "requiredFlags"    # I
    .param p5, "forbiddenFlags"    # I
    .param p6, "reason"    # I
    .param p7, "listener"    # Ljava/lang/String;

    .prologue
    .line 365
    const/16 v0, 0xac0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object p7, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 366
    return-void
.end method

.method public static writeNotificationCanceled(Ljava/lang/String;IIII)V
    .registers 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "reason"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I

    .prologue
    .line 393
    const/16 v0, 0x6b8a

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 394
    return-void
.end method

.method public static writeNotificationClicked(Ljava/lang/String;III)V
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "lifespan"    # I
    .param p2, "freshness"    # I
    .param p3, "exposure"    # I

    .prologue
    .line 385
    const/16 v0, 0x6b80

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 386
    return-void
.end method

.method public static writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 12
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "userid"    # I
    .param p6, "notification"    # Ljava/lang/String;
    .param p7, "status"    # I

    .prologue
    .line 357
    const/16 v0, 0xabe

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object p6, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 358
    return-void
.end method

.method public static writeNotificationExpansion(Ljava/lang/String;IIIII)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "userAction"    # I
    .param p2, "expanded"    # I
    .param p3, "lifespan"    # I
    .param p4, "freshness"    # I
    .param p5, "exposure"    # I

    .prologue
    .line 381
    const/16 v0, 0x6b77

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 382
    return-void
.end method

.method public static writeNotificationPanelHidden()V
    .registers 2

    .prologue
    .line 373
    const/16 v0, 0x6b6d

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 374
    return-void
.end method

.method public static writeNotificationPanelRevealed(I)V
    .registers 2
    .param p0, "items"    # I

    .prologue
    .line 369
    const/16 v0, 0x6b6c

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 370
    return-void
.end method

.method public static writeNotificationVisibility(Ljava/lang/String;IIIII)V
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "visibile"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I
    .param p5, "rank"    # I

    .prologue
    .line 397
    const/16 v0, 0x6b8b

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 398
    return-void
.end method

.method public static writeNotificationVisibilityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "newlyvisiblekeys"    # Ljava/lang/String;
    .param p1, "nolongervisiblekeys"    # Ljava/lang/String;

    .prologue
    .line 377
    const/16 v0, 0x6b76

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 378
    return-void
.end method

.method public static writePmCriticalInfo(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 549
    const/16 v0, 0xc30

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 550
    return-void
.end method

.method public static writePowerPartialWakeState(ILjava/lang/String;)V
    .registers 6
    .param p0, "releasedoracquired"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 337
    const/16 v0, 0xaa9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 338
    return-void
.end method

.method public static writePowerScreenBroadcastDone(IJI)V
    .registers 9
    .param p0, "on"    # I
    .param p1, "broadcastduration"    # J
    .param p3, "wakelockcount"    # I

    .prologue
    .line 325
    const/16 v0, 0xaa6

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 326
    return-void
.end method

.method public static writePowerScreenBroadcastSend(I)V
    .registers 2
    .param p0, "wakelockcount"    # I

    .prologue
    .line 321
    const/16 v0, 0xaa5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 322
    return-void
.end method

.method public static writePowerScreenBroadcastStop(II)V
    .registers 6
    .param p0, "which"    # I
    .param p1, "wakelockcount"    # I

    .prologue
    .line 329
    const/16 v0, 0xaa7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 330
    return-void
.end method

.method public static writePowerScreenState(IIJI)V
    .registers 9
    .param p0, "offoron"    # I
    .param p1, "becauseofuser"    # I
    .param p2, "totaltouchdowntime"    # J
    .param p4, "touchcycles"    # I

    .prologue
    .line 333
    const/16 v0, 0xaa8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 334
    return-void
.end method

.method public static writePowerSleepRequested(I)V
    .registers 2
    .param p0, "wakelockscleared"    # I

    .prologue
    .line 317
    const/16 v0, 0xaa4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 318
    return-void
.end method

.method public static writeRestoreAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 485
    const/16 v0, 0xb10

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 486
    return-void
.end method

.method public static writeRestorePackage(Ljava/lang/String;I)V
    .registers 6
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 489
    const/16 v0, 0xb11

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 490
    return-void
.end method

.method public static writeRestoreStart(Ljava/lang/String;J)V
    .registers 8
    .param p0, "transport"    # Ljava/lang/String;
    .param p1, "source"    # J

    .prologue
    .line 477
    const/16 v0, 0xb0e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 478
    return-void
.end method

.method public static writeRestoreSuccess(II)V
    .registers 6
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 493
    const/16 v0, 0xb12

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 494
    return-void
.end method

.method public static writeRestoreTransportFailure()V
    .registers 2

    .prologue
    .line 481
    const/16 v0, 0xb0f

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 482
    return-void
.end method

.method public static writeStreamDevicesChanged(III)V
    .registers 7
    .param p0, "stream"    # I
    .param p1, "prevDevices"    # I
    .param p2, "devices"    # I

    .prologue
    .line 685
    const v0, 0x9c41

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 686
    return-void
.end method

.method public static writeUnknownSourcesEnabled(I)V
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 545
    const/16 v0, 0xc26

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 546
    return-void
.end method

.method public static writeVolumeChanged(IIIILjava/lang/String;)V
    .registers 9
    .param p0, "stream"    # I
    .param p1, "prevLevel"    # I
    .param p2, "level"    # I
    .param p3, "maxLevel"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 681
    const v0, 0x9c40

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 682
    return-void
.end method

.method public static writeWatchdog(Ljava/lang/String;)V
    .registers 2
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 405
    const/16 v0, 0xaf2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 406
    return-void
.end method

.method public static writeWatchdogHardReset(Ljava/lang/String;III)V
    .registers 8
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I

    .prologue
    .line 417
    const/16 v0, 0xaf5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 418
    return-void
.end method

.method public static writeWatchdogMeminfo(IIIIIIIIIII)V
    .registers 15
    .param p0, "memfree"    # I
    .param p1, "buffers"    # I
    .param p2, "cached"    # I
    .param p3, "active"    # I
    .param p4, "inactive"    # I
    .param p5, "anonpages"    # I
    .param p6, "mapped"    # I
    .param p7, "slab"    # I
    .param p8, "sreclaimable"    # I
    .param p9, "sunreclaim"    # I
    .param p10, "pagetables"    # I

    .prologue
    .line 433
    const/16 v0, 0xaf9

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 434
    return-void
.end method

.method public static writeWatchdogProcPss(Ljava/lang/String;II)V
    .registers 7
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "pss"    # I

    .prologue
    .line 409
    const/16 v0, 0xaf3

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 410
    return-void
.end method

.method public static writeWatchdogProcStats(IIIII)V
    .registers 9
    .param p0, "deathsinone"    # I
    .param p1, "deathsintwo"    # I
    .param p2, "deathsinthree"    # I
    .param p3, "deathsinfour"    # I
    .param p4, "deathsinfive"    # I

    .prologue
    .line 425
    const/16 v0, 0xaf7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 426
    return-void
.end method

.method public static writeWatchdogPssStats(IIIIIIIIIII)V
    .registers 15
    .param p0, "emptypss"    # I
    .param p1, "emptycount"    # I
    .param p2, "backgroundpss"    # I
    .param p3, "backgroundcount"    # I
    .param p4, "servicepss"    # I
    .param p5, "servicecount"    # I
    .param p6, "visiblepss"    # I
    .param p7, "visiblecount"    # I
    .param p8, "foregroundpss"    # I
    .param p9, "foregroundcount"    # I
    .param p10, "nopsscount"    # I

    .prologue
    .line 421
    const/16 v0, 0xaf6

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 422
    return-void
.end method

.method public static writeWatchdogRequestedReboot(IIIIIII)V
    .registers 11
    .param p0, "nowait"    # I
    .param p1, "scheduleinterval"    # I
    .param p2, "recheckinterval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "minscreenoff"    # I
    .param p6, "minnextalarm"    # I

    .prologue
    .line 441
    const/16 v0, 0xafb

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 442
    return-void
.end method

.method public static writeWatchdogScheduledReboot(JIIILjava/lang/String;)V
    .registers 10
    .param p0, "now"    # J
    .param p2, "interval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "skip"    # Ljava/lang/String;

    .prologue
    .line 429
    const/16 v0, 0xaf8

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 430
    return-void
.end method

.method public static writeWatchdogSoftReset(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 9
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I
    .param p4, "skip"    # Ljava/lang/String;

    .prologue
    .line 413
    const/16 v0, 0xaf4

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 414
    return-void
.end method

.method public static writeWatchdogVmstat(JIIIII)V
    .registers 11
    .param p0, "runtime"    # J
    .param p2, "pgfree"    # I
    .param p3, "pgactivate"    # I
    .param p4, "pgdeactivate"    # I
    .param p5, "pgfault"    # I
    .param p6, "pgmajfault"    # I

    .prologue
    .line 437
    const/16 v0, 0xafa

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 438
    return-void
.end method

.method public static writeWmHomeStackMoved(I)V
    .registers 2
    .param p0, "totop"    # I

    .prologue
    .line 573
    const/16 v0, 0x791d

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 574
    return-void
.end method

.method public static writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p0, "window"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 553
    const/16 v0, 0x7918

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 554
    return-void
.end method

.method public static writeWmStackCreated(IIII)V
    .registers 8
    .param p0, "stackid"    # I
    .param p1, "relativeboxid"    # I
    .param p2, "position"    # I
    .param p3, "weight"    # I

    .prologue
    .line 569
    const/16 v0, 0x791c

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 570
    return-void
.end method

.method public static writeWmStackRemoved(I)V
    .registers 2
    .param p0, "stackid"    # I

    .prologue
    .line 577
    const/16 v0, 0x791e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 578
    return-void
.end method

.method public static writeWmTaskCreated(II)V
    .registers 6
    .param p0, "taskid"    # I
    .param p1, "stackid"    # I

    .prologue
    .line 557
    const/16 v0, 0x7919

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 558
    return-void
.end method

.method public static writeWmTaskMoved(III)V
    .registers 7
    .param p0, "taskid"    # I
    .param p1, "totop"    # I
    .param p2, "index"    # I

    .prologue
    .line 561
    const/16 v0, 0x791a

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 562
    return-void
.end method

.method public static writeWmTaskRemoved(ILjava/lang/String;)V
    .registers 6
    .param p0, "taskid"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 565
    const/16 v0, 0x791b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 566
    return-void
.end method

.method public static writeWpWallpaperCrashed(Ljava/lang/String;)V
    .registers 2
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 589
    const v0, 0x80e8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 590
    return-void
.end method
