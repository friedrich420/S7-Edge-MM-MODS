.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    }
.end annotation


# static fields
.field private static sdVolInfo:Landroid/os/storage/VolumeInfo;


# instance fields
.field private activeVolumeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Landroid/os/storage/StorageEventListener;

.field private final mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

.field private final mMoves:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/usb/StorageNotification$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mUPSMReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mMoves:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$1;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mListener:Landroid/os/storage/StorageEventListener;

    .line 117
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$2;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$3;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mFinishReceiver:Landroid/content/BroadcastReceiver;

    .line 135
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$4;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mUPSMReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$5;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    .line 205
    new-instance v0, Lcom/android/systemui/usb/StorageNotification$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/StorageNotification$6;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    iput-object v0, p0, mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/storage/StorageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 57
    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;)Landroid/app/NotificationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 57
    iget-object v0, p0, mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/DiskInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Landroid/os/storage/DiskInfo;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/storage/VolumeInfo;
    .registers 1

    .prologue
    .line 57
    sget-object v0, sdVolInfo:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$402(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 1
    .param p0, "x0"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 57
    sput-object p0, sdVolInfo:Landroid/os/storage/VolumeInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 3
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 57
    invoke-direct {p0, p1}, onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 57
    iget-object v0, p0, activeVolumeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/usb/StorageNotification;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 57
    iget-object v0, p0, mMoves:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "x2"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V

    return-void
.end method

.method private buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 9
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/high16 v3, 0x10000000

    .line 730
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, "fsUuid":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v0, "samsung.myfiles.intent.action.LAUNCH_MY_FILES"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "samsung.myfiles.intent.extra.START_PATH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 736
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 737
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 772
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$PrivateVolumeForgetActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v0, "android.os.storage.extra.FS_UUID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-virtual {p1}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 778
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildInitPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 697
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 698
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.StorageWizardInit"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 703
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 708
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.StorageWizardInit"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 714
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 685
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v2

    invoke-direct {p0, v1, v2}, getSmallIcon(Landroid/os/storage/DiskInfo;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x1060059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 7
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 763
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 767
    .local v1, "requestKey":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 7
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 720
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.StorageUnmountReceiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 725
    .local v1, "requestKey":I
    iget-object v2, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v2, v1, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method private buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v4, 0x0

    .line 742
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 743
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 758
    :goto_d
    return-object v4

    .line 745
    :pswitch_e
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$PrivateVolumeSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    :goto_15
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 758
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_d

    .line 749
    .end local v1    # "requestKey":I
    :pswitch_31
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$PublicVolumeSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_15

    .line 743
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_31
        :pswitch_e
    .end packed-switch
.end method

.method private buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .registers 9
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    .line 783
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 784
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.StorageWizardMigrateProgress"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v6

    .line 789
    .local v6, "vol":Landroid/os/storage/VolumeInfo;
    const-string v0, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;

    .prologue
    .line 796
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 797
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.deviceinfo.StorageWizardMoveProgress"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v0, "android.content.pm.extra.MOVE_ID"

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 801
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->moveId:I

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;
    .registers 8
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;

    .prologue
    .line 806
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 807
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.deviceinfo.StorageWizardReady"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 812
    .local v1, "requestKey":I
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getSmallIcon(Landroid/os/storage/DiskInfo;I)I
    .registers 5
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "state"    # I

    .prologue
    const v0, 0x108007a

    .line 668
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 669
    sparse-switch p2, :sswitch_data_18

    .line 679
    :cond_c
    :goto_c
    :sswitch_c
    return v0

    .line 676
    :cond_d
    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 677
    const v0, 0x1080786

    goto :goto_c

    .line 669
    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_c
        0x5 -> :sswitch_c
    .end sparse-switch
.end method

.method private onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V
    .registers 14
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    const v10, 0x5344534b

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 311
    if-nez p2, :cond_8d

    iget-wide v4, p1, Landroid/os/storage/DiskInfo;->size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8d

    .line 313
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040406

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040407

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "text":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x6

    invoke-direct {p0, p1, v4}, getSmallIcon(Landroid/os/storage/DiskInfo;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {p0, p1}, buildInitPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v4, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 331
    .local v0, "notif":Landroid/app/Notification;
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v10, v0, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 337
    .end local v0    # "notif":Landroid/app/Notification;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :goto_8c
    return-void

    .line 335
    :cond_8d
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v10, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_8c
.end method

.method private onMoveFinished(Lcom/android/systemui/usb/StorageNotification$MoveInfo;I)V
    .registers 15
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I

    .prologue
    const v11, 0x534d4f56

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 619
    iget-object v6, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_13

    .line 622
    iget-object v6, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v11, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 665
    :goto_12
    return-void

    .line 626
    :cond_13
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 627
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    iget-object v6, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "descrip":Ljava/lang/String;
    const/16 v6, -0x64

    if-ne p2, v6, :cond_ab

    .line 632
    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040415

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 633
    .local v5, "title":Ljava/lang/CharSequence;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040416

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, "text":Ljava/lang/CharSequence;
    :goto_3d
    if-eqz v3, :cond_be

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    if-eqz v6, :cond_be

    .line 642
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, buildWizardReadyPendingIntent(Landroid/os/storage/DiskInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 649
    .local v1, "intent":Landroid/app/PendingIntent;
    :goto_4d
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x108007a

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, mContext:Landroid/content/Context;

    const v8, 0x1060059

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v7, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, "sys"

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 664
    .local v2, "notif":Landroid/app/Notification;
    iget-object v6, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v11, v2, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_12

    .line 635
    .end local v1    # "intent":Landroid/app/PendingIntent;
    .end local v2    # "notif":Landroid/app/Notification;
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_ab
    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040417

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 636
    .restart local v5    # "title":Ljava/lang/CharSequence;
    iget-object v6, p0, mContext:Landroid/content/Context;

    const v7, 0x1040418

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "text":Ljava/lang/CharSequence;
    goto :goto_3d

    .line 643
    :cond_be
    if-eqz v3, :cond_c5

    .line 644
    invoke-direct {p0, v3}, buildVolumeSettingsPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v1

    .restart local v1    # "intent":Landroid/app/PendingIntent;
    goto :goto_4d

    .line 646
    .end local v1    # "intent":Landroid/app/PendingIntent;
    :cond_c5
    const/4 v1, 0x0

    .restart local v1    # "intent":Landroid/app/PendingIntent;
    goto :goto_4d
.end method

.method private onMoveProgress(Lcom/android/systemui/usb/StorageNotification$MoveInfo;IJ)V
    .registers 16
    .param p1, "move"    # Lcom/android/systemui/usb/StorageNotification$MoveInfo;
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 579
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 580
    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1040413

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->label:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_19
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gez v4, :cond_98

    .line 587
    const/4 v2, 0x0

    .line 593
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_20
    iget-object v4, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_9d

    .line 594
    invoke-direct {p0, p1}, buildWizardMovePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 599
    .local v0, "intent":Landroid/app/PendingIntent;
    :goto_28
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x108007a

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p0, mContext:Landroid/content/Context;

    const v6, 0x1060059

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "progress"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v5, 0x64

    invoke-virtual {v4, v5, p2, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 615
    .local v1, "notif":Landroid/app/Notification;
    iget-object v4, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, p1, Lcom/android/systemui/usb/StorageNotification$MoveInfo;->packageName:Ljava/lang/String;

    const v6, 0x534d4f56

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 616
    return-void

    .line 582
    .end local v0    # "intent":Landroid/app/PendingIntent;
    .end local v1    # "notif":Landroid/app/Notification;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_8e
    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x1040414

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_19

    .line 589
    :cond_98
    invoke-static {p3, p4}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_20

    .line 596
    :cond_9d
    invoke-direct {p0, p1}, buildWizardMigratePendingIntent(Lcom/android/systemui/usb/StorageNotification$MoveInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/app/PendingIntent;
    goto :goto_28
.end method

.method private onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 5
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 351
    const-string v0, "StorageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying about private volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, updateMissingPrivateVolumes()V

    .line 354
    return-void
.end method

.method private onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 14
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v11, 0x0

    const v10, 0x53505542

    .line 357
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notifying about public volume: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v7

    packed-switch v7, :pswitch_data_1aa

    .line 387
    const/4 v6, 0x0

    .line 391
    .local v6, "notif":Landroid/app/Notification;
    :goto_28
    if-eqz v6, :cond_178

    .line 392
    const/4 v3, 0x0

    .line 393
    .local v3, "isUPSModeOn":Z
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    .line 394
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isUPSModeOn "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    if-eqz v3, :cond_9b

    .line 396
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelAsUser: 374 ,id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v7, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v10, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 425
    .end local v3    # "isUPSModeOn":Z
    :goto_72
    return-void

    .line 362
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_73
    invoke-direct {p0, p1}, onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 363
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 365
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_78
    invoke-direct {p0, p1}, onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 366
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 369
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_7d
    invoke-direct {p0, p1}, onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 370
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 372
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_82
    invoke-direct {p0, p1}, onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 373
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 375
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_87
    invoke-direct {p0, p1}, onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 376
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 378
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_8c
    invoke-direct {p0, p1}, onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 379
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 381
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_91
    invoke-direct {p0, p1}, onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 382
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 384
    .end local v6    # "notif":Landroid/app/Notification;
    :pswitch_96
    invoke-direct {p0, p1}, onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;

    move-result-object v6

    .line 385
    .restart local v6    # "notif":Landroid/app/Notification;
    goto :goto_28

    .line 400
    .restart local v3    # "isUPSModeOn":Z
    :cond_9b
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyAsUser: 378 ,id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v7, p0, activeVolumeMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c1
    :goto_c1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_138

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 403
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 404
    .local v5, "memoVolId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 405
    .local v4, "memoUuid":Ljava/lang/String;
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyAsUser: memoVolId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,memoUuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 407
    iget-object v7, p0, activeVolumeMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyAsUser: clear old noti for volId"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,uuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v7, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v5, v10, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_c1

    .line 412
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "memoUuid":Ljava/lang/String;
    .end local v5    # "memoVolId":Ljava/lang/String;
    :cond_138
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_151

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_151

    .line 413
    iget-object v7, p0, activeVolumeMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_151
    new-instance v0, Landroid/content/Intent;

    const-string v7, "samsung.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v0, "deleteIntent":Landroid/content/Intent;
    const-string v7, "volId"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v7, p0, mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v7, v11, v0, v11, v8}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 418
    iget-object v7, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v10, v6, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_72

    .line 421
    .end local v0    # "deleteIntent":Landroid/content/Intent;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isUPSModeOn":Z
    :cond_178
    const-string v7, "StorageNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cancelAsUser: 381 ,id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v7, p0, activeVolumeMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v7, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v10, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_72

    .line 360
    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_73
        :pswitch_78
        :pswitch_7d
        :pswitch_7d
        :pswitch_82
        :pswitch_87
        :pswitch_8c
        :pswitch_91
        :pswitch_96
    .end packed-switch
.end method

.method private onVolumeBadRemoval(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 560
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-nez v3, :cond_12

    .line 562
    :cond_10
    const/4 v3, 0x0

    .line 571
    :goto_11
    return-object v3

    .line 565
    :cond_12
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 566
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040408

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 568
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040409

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto :goto_11
.end method

.method private onVolumeChecking(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 433
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 434
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040400

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040401

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeEjecting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 512
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 513
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104040c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104040d

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeFormatting(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 508
    const/4 v0, 0x0

    return-object v0
.end method

.method private onVolumeMounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 16
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v7, 0x0

    const v13, 0x104040f

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto :goto_14

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_15

    .line 450
    const-string v8, "StorageNotification"

    const-string v9, "FsUuid is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_14
    :goto_14
    return-object v7

    .line 453
    :cond_15
    iget-object v8, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v4

    .line 454
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    .line 458
    .local v2, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v8

    if-eqz v8, :cond_2f

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v8

    if-nez v8, :cond_14

    .line 462
    :cond_2f
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v7

    if-eqz v7, :cond_a3

    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->isInited()Z

    move-result v7

    if-nez v7, :cond_a3

    .line 463
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const v8, 0x1040402

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 467
    .local v5, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 468
    .local v3, "initIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v6, v5}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action;

    const v9, 0x10804c0

    iget-object v10, p0, mContext:Landroid/content/Context;

    const v11, 0x104040e

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action;

    const v9, 0x10803d4

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1}, buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "sys"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    goto/16 :goto_14

    .line 481
    .end local v3    # "initIntent":Landroid/app/PendingIntent;
    .end local v5    # "text":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_a3
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 482
    .restart local v6    # "title":Ljava/lang/CharSequence;
    iget-object v7, p0, mContext:Landroid/content/Context;

    const v8, 0x1040403

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 485
    .restart local v5    # "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, buildBrowsePendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 486
    .local v0, "browseIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p1, v6, v5}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action;

    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1040410

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1}, buildUnmountPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-direct {v8, v12, v9, v10}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const-string v8, "sys"

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 498
    .local v1, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v7

    if-eqz v7, :cond_109

    .line 499
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 502
    :cond_109
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    goto/16 :goto_14
.end method

.method private onVolumeRemoved(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 542
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v3

    if-nez v3, :cond_12

    .line 544
    :cond_10
    const/4 v3, 0x0

    .line 553
    :goto_11
    return-object v3

    .line 547
    :cond_12
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 548
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104040a

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x104040b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    goto :goto_11
.end method

.method private onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V
    .registers 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 348
    :goto_7
    return-void

    .line 342
    :pswitch_8
    invoke-direct {p0, p1}, onPrivateVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_7

    .line 345
    :pswitch_c
    invoke-direct {p0, p1}, onPublicVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_7

    .line 340
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private onVolumeUnmountable(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 11
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 527
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    .line 528
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040404

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040405

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v2, v1}, buildNotificationBuilder(Landroid/os/storage/VolumeInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {p0, p1}, buildInitPendingIntent(Landroid/os/storage/VolumeInfo;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method

.method private onVolumeUnmounted(Landroid/os/storage/VolumeInfo;)Landroid/app/Notification;
    .registers 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateMissingPrivateVolumes()V
    .registers 16

    .prologue
    const v14, 0x53505256

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 275
    iget-object v8, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v5

    .line 276
    .local v5, "recs":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ba

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    .line 277
    .local v4, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->getType()I

    move-result v8

    if-ne v8, v12, :cond_f

    .line 279
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "fsUuid":Ljava/lang/String;
    iget-object v8, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 281
    .local v2, "info":Landroid/os/storage/VolumeInfo;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v8

    if-nez v8, :cond_39

    :cond_33
    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->isSnoozed()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 283
    :cond_39
    iget-object v8, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v14, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_f

    .line 287
    :cond_41
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x1040411

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "title":Ljava/lang/CharSequence;
    iget-object v8, p0, mContext:Landroid/content/Context;

    const v9, 0x1040412

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "text":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x108007a

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, mContext:Landroid/content/Context;

    const v10, 0x1060059

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-direct {p0, v4}, buildForgetPendingIntent(Landroid/os/storage/VolumeRecord;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string v9, "sys"

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-direct {p0, v0}, buildSnoozeIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 305
    .local v3, "notif":Landroid/app/Notification;
    iget-object v8, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v14, v3, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_f

    .line 308
    .end local v0    # "fsUuid":Ljava/lang/String;
    .end local v2    # "info":Landroid/os/storage/VolumeInfo;
    .end local v3    # "notif":Landroid/app/Notification;
    .end local v4    # "rec":Landroid/os/storage/VolumeRecord;
    .end local v6    # "text":Ljava/lang/CharSequence;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_ba
    return-void
.end method


# virtual methods
.method public start()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 237
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 239
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    iput-object v6, p0, mStorageManager:Landroid/os/storage/StorageManager;

    .line 240
    iget-object v6, p0, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, mListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 242
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.systemui.action.SNOOZE_VOLUME"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 244
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mFinishReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.systemui.action.FINISH_WIZARD"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v9, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 247
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v6, "samsung.systemui.usb.STORAGE_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mLocalechangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mUPSMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v6, p0, activeVolumeMap:Ljava/util/Map;

    .line 259
    iget-object v6, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "disks":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/DiskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    .line 261
    .local v0, "disk":Landroid/os/storage/DiskInfo;
    iget v6, v0, Landroid/os/storage/DiskInfo;->volumeCount:I

    invoke-direct {p0, v0, v6}, onDiskScannedInternal(Landroid/os/storage/DiskInfo;I)V

    goto :goto_75

    .line 264
    .end local v0    # "disk":Landroid/os/storage/DiskInfo;
    :cond_87
    iget-object v6, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 265
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_91
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 266
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-direct {p0, v4}, onVolumeStateChangedInternal(Landroid/os/storage/VolumeInfo;)V

    goto :goto_91

    .line 269
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_a1
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, mMoveCallback:Landroid/content/pm/PackageManager$MoveCallback;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V

    .line 271
    invoke-direct {p0}, updateMissingPrivateVolumes()V

    .line 272
    return-void
.end method
