.class public Lcom/android/server/SecExternalDisplayService;
.super Landroid/os/ISecExternalDisplayService$Stub;
.source "SecExternalDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayService$5;,
        Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;,
        Lcom/android/server/SecExternalDisplayService$EDSToast;,
        Lcom/android/server/SecExternalDisplayService$EDSBlank;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_ALIGNMENT:I = 0x50

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayService_Java"

.field private static bIsLogEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;


# instance fields
.field public CALL_CONNECT:Z

.field private bDreamsEnabledByDefaultConfig:Z

.field private bIsAlarmRecieved:Z

.field private bIsDayDreamEnabled:Z

.field private bIsHomeTheatreConnected:Z

.field private bPresentation:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogCheckBox:Landroid/widget/CheckBox;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDockSurfaceParameter:I

.field private final mMHLHandler:Landroid/os/Handler;

.field private mMHLObserver:Landroid/os/UEventObserver;

.field public mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-boolean v0, bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 86
    iput v0, p0, mDockSurfaceParameter:I

    .line 87
    iput-boolean v0, p0, bIsHomeTheatreConnected:Z

    .line 88
    iput-boolean v0, p0, bPresentation:Z

    .line 89
    iput-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iput-boolean v0, p0, CALL_CONNECT:Z

    .line 94
    iput-boolean v0, p0, bIsAlarmRecieved:Z

    .line 98
    iput-object v1, p0, mAlertDialog:Landroid/app/AlertDialog;

    .line 100
    iput-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iput-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 193
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, mMHLObserver:Landroid/os/UEventObserver;

    .line 208
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, mMHLHandler:Landroid/os/Handler;

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 224
    invoke-direct {p0}, Landroid/os/ISecExternalDisplayService$Stub;-><init>()V

    .line 86
    iput v4, p0, mDockSurfaceParameter:I

    .line 87
    iput-boolean v4, p0, bIsHomeTheatreConnected:Z

    .line 88
    iput-boolean v4, p0, bPresentation:Z

    .line 89
    iput-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iput-boolean v4, p0, CALL_CONNECT:Z

    .line 94
    iput-boolean v4, p0, bIsAlarmRecieved:Z

    .line 98
    iput-object v0, p0, mAlertDialog:Landroid/app/AlertDialog;

    .line 100
    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 193
    new-instance v0, Lcom/android/server/SecExternalDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$1;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, mMHLObserver:Landroid/os/UEventObserver;

    .line 208
    new-instance v0, Lcom/android/server/SecExternalDisplayService$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayService$2;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v0, p0, mMHLHandler:Landroid/os/Handler;

    .line 226
    const-string/jumbo v0, "persist.sys.SecEDS.Logs"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, bIsLogEnabled:Z

    .line 227
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "SecExternalDisplayService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sput-object p1, mContext:Landroid/content/Context;

    .line 229
    new-instance v0, Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-direct {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;-><init>()V

    sput-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    .line 232
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 233
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, wm:Landroid/view/WindowManager;

    .line 235
    iget-object v0, p0, mMHLObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 238
    sget-object v0, mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V

    .line 239
    invoke-static {p0}, Lcom/android/server/SecExternalDisplayIntents;->StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V

    .line 241
    invoke-virtual {p0}, getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_79

    .line 242
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, SecExternalDisplaySetStatus(IZ)Z

    .line 247
    :goto_78
    return-void

    .line 244
    :cond_79
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v4}, SecExternalDisplaySetStatus(IZ)Z

    goto :goto_78
.end method

.method private SecExternalDisplayInitWakeMode(Landroid/content/Context;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nMode"    # I

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 278
    .local v1, "wakelockHeld":Z
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_22

    .line 280
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_11

    .line 281
    const-string v2, "SecExternalDisplayService_Java"

    const-string/jumbo v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_11
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 284
    const/4 v1, 0x1

    .line 285
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 287
    :cond_1f
    const/4 v2, 0x0

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    :cond_22
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_2d

    .line 291
    const-string v2, "SecExternalDisplayService_Java"

    const-string v3, "SecExternalDisplayInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2d
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 294
    .local v0, "pm":Landroid/os/PowerManager;
    const/high16 v2, 0x20000000

    or-int/2addr v2, p2

    const-string v3, "SecExternalDisplayService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_5d

    .line 297
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecExternalDisplayInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_5d
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 301
    if-eqz v1, :cond_6a

    .line 303
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 305
    :cond_6a
    return-void
.end method

.method private SecExternalDisplaySetWakeLock(Z)V
    .registers 4
    .param p1, "bStatus"    # Z

    .prologue
    .line 315
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3b

    .line 317
    if-eqz p1, :cond_1f

    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 319
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_19

    .line 320
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_19
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 335
    :cond_1e
    :goto_1e
    return-void

    .line 323
    :cond_1f
    if-nez p1, :cond_1e

    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 325
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_35

    .line 326
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_35
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1e

    .line 332
    :cond_3b
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_1e

    .line 333
    const-string v0, "SecExternalDisplayService_Java"

    const-string/jumbo v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 80
    sget-boolean v0, bIsLogEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/SecExternalDisplayService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, mMHLHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayService;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-boolean v0, p0, bPresentation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SecExternalDisplayService;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 80
    iget-object v0, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public SecExternalDisplayAlertMsg(I)V
    .registers 13
    .param p1, "value"    # I

    .prologue
    const/4 v4, 0x1

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    .line 918
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "SecExternalDisplayService available only from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 920
    :cond_11
    const-string/jumbo v1, "persist.sys.SecEDS.Dialog"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 968
    :goto_1b
    return-void

    .line 923
    :cond_1c
    const/4 v10, 0x0

    .line 924
    .local v10, "strPopUp":Ljava/lang/String;
    packed-switch p1, :pswitch_data_108

    .line 933
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " Received Wrong value from kernel "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 927
    :pswitch_28
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040815

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 937
    :goto_35
    const/4 v6, 0x0

    .line 938
    .local v6, "isLightTheme":Z
    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 939
    .local v9, "mThemeType":Ljava/lang/String;
    if-eqz v9, :cond_49

    const-string/jumbo v1, "white"

    invoke-virtual {v9, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 940
    const/4 v6, 0x1

    .line 942
    :cond_49
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightTheme => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    if-ne v6, v4, :cond_ff

    const v7, 0x10302d2

    .line 945
    .local v7, "mAlertTheme":I
    :goto_66
    if-ne v6, v4, :cond_104

    const/high16 v8, -0x1000000

    .line 947
    .local v8, "mCheckBoxColor":I
    :goto_6a
    new-instance v1, Landroid/widget/CheckBox;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    .line 948
    iget-object v1, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040903

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v1, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 950
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 951
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040814

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 952
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 953
    iget-object v1, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLeft()I

    move-result v2

    add-int/lit8 v2, v2, 0x50

    iget-object v3, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getTop()I

    move-result v3

    iget-object v4, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getRight()I

    move-result v4

    iget-object v5, p0, mDialogCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getBottom()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 954
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/SecExternalDisplayService$4;

    invoke-direct {v2, p0}, Lcom/android/server/SecExternalDisplayService$4;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 964
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, mAlertDialog:Landroid/app/AlertDialog;

    .line 965
    iget-object v1, p0, mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 966
    iget-object v1, p0, mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1b

    .line 930
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v6    # "isLightTheme":Z
    .end local v7    # "mAlertTheme":I
    .end local v8    # "mCheckBoxColor":I
    .end local v9    # "mThemeType":Ljava/lang/String;
    :pswitch_f0
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040817

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 931
    goto/16 :goto_35

    .line 944
    .restart local v6    # "isLightTheme":Z
    .restart local v9    # "mThemeType":Ljava/lang/String;
    :cond_ff
    const v7, 0x10302d1

    goto/16 :goto_66

    .line 945
    .restart local v7    # "mAlertTheme":I
    :cond_104
    const/4 v8, -0x1

    goto/16 :goto_6a

    .line 924
    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_28
        :pswitch_f0
    .end packed-switch
.end method

.method public SecExternalDisplayBlankDisplay(I)Z
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 732
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 709
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 710
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_10
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    if-nez p3, :cond_18

    .line 714
    :cond_16
    const/4 v0, 0x1

    .line 715
    :goto_17
    return v0

    :cond_18
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_17
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 721
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 724
    :cond_10
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    if-nez p3, :cond_18

    .line 725
    :cond_16
    const/4 v0, 0x1

    .line 726
    :goto_17
    return v0

    :cond_18
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_17
.end method

.method public SecExternalDisplayGet3DMode()I
    .registers 3

    .prologue
    .line 691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 692
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetFPS()I
    .registers 9

    .prologue
    .line 637
    const/4 v3, -0x1

    .line 640
    .local v3, "fps":I
    :try_start_1
    const-string v6, "SurfaceFlinger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 641
    .local v0, "SFservice":Landroid/os/IBinder;
    if-eqz v0, :cond_23

    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 644
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 645
    .local v5, "reply":Landroid/os/Parcel;
    const-string v6, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 646
    const/16 v6, 0x400

    const/4 v7, 0x0

    invoke-interface {v0, v6, v1, v5, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 648
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_23} :catch_25

    .end local v1    # "data":Landroid/os/Parcel;
    .end local v5    # "reply":Landroid/os/Parcel;
    :cond_23
    move v4, v3

    .line 655
    .end local v0    # "SFservice":Landroid/os/IBinder;
    .end local v3    # "fps":I
    .local v4, "fps":I
    :goto_24
    return v4

    .line 651
    .end local v4    # "fps":I
    .restart local v3    # "fps":I
    :catch_25
    move-exception v2

    .local v2, "ex":Landroid/os/RemoteException;
    move v4, v3

    .line 653
    .end local v3    # "fps":I
    .restart local v4    # "fps":I
    goto :goto_24
.end method

.method public SecExternalDisplayGetResolution()I
    .registers 3

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 673
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .registers 4
    .param p1, "param"    # I

    .prologue
    .line 766
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 767
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 770
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayIsTablet()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 889
    iget-object v8, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v8, :cond_39

    .line 891
    iget-object v8, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v2

    .line 892
    .local v2, "mDisplay":[Landroid/view/Display;
    if-eqz v2, :cond_39

    iget-object v8, p0, wm:Landroid/view/WindowManager;

    if-eqz v8, :cond_39

    .line 894
    iget-object v8, p0, wm:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 895
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 896
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 897
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 898
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 899
    .local v1, "height":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 900
    .local v3, "orientation":I
    if-le v5, v1, :cond_2f

    if-eqz v3, :cond_36

    const/4 v8, 0x2

    if-eq v3, v8, :cond_36

    :cond_2f
    if-ge v5, v1, :cond_37

    if-eq v3, v6, :cond_36

    const/4 v8, 0x3

    if-ne v3, v8, :cond_37

    .line 906
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "mDisplay":[Landroid/view/Display;
    .end local v3    # "orientation":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    :cond_36
    :goto_36
    return v6

    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "height":I
    .restart local v2    # "mDisplay":[Landroid/view/Display;
    .restart local v3    # "orientation":I
    .restart local v4    # "size":Landroid/graphics/Point;
    .restart local v5    # "width":I
    :cond_37
    move v6, v7

    .line 903
    goto :goto_36

    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "mDisplay":[Landroid/view/Display;
    .end local v3    # "orientation":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    :cond_39
    move v6, v7

    .line 906
    goto :goto_36
.end method

.method public SecExternalDisplayLEDDestroy()Z
    .registers 2

    .prologue
    .line 785
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDInit()Z
    .registers 2

    .prologue
    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDOff()Z
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDRefresh()Z
    .registers 2

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetLoop(IIIII)Z
    .registers 7
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetScroll(IIIII)Z
    .registers 7
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayLEDSetframe([BII)Z
    .registers 5
    .param p1, "data"    # [B
    .param p2, "numOfFrames"    # I
    .param p3, "repeatCount"    # I

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .registers 4
    .param p1, "bStatus"    # Z

    .prologue
    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 740
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .registers 4
    .param p1, "nS3DMode"    # I

    .prologue
    .line 700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 701
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .registers 4
    .param p1, "transform"    # I

    .prologue
    .line 858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 859
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 862
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetFPS(I)Z
    .registers 10
    .param p1, "FPS"    # I

    .prologue
    const/4 v4, 0x0

    .line 615
    const/4 v3, 0x0

    .line 618
    .local v3, "status":Z
    :try_start_2
    const-string v5, "SurfaceFlinger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 619
    .local v0, "SFservice":Landroid/os/IBinder;
    if-eqz v0, :cond_21

    .line 621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 622
    .local v1, "data":Landroid/os/Parcel;
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    const/16 v5, 0x3fe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v5, v1, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_21} :catch_23

    .end local v1    # "data":Landroid/os/Parcel;
    :cond_21
    move v4, v3

    .line 632
    .end local v0    # "SFservice":Landroid/os/IBinder;
    :goto_22
    return v4

    .line 628
    :catch_23
    move-exception v2

    .line 630
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_22
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .registers 4
    .param p1, "bEnable"    # Z

    .prologue
    .line 848
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 849
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 878
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_16

    .line 882
    :cond_14
    const/4 v0, 0x1

    .line 883
    :goto_15
    return v0

    :cond_16
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_15
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .registers 4
    .param p1, "nOutputMode"    # I

    .prologue
    .line 681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 682
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .registers 4
    .param p1, "bStatus"    # Z

    .prologue
    .line 748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 749
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .registers 4
    .param p1, "nResolution"    # I

    .prologue
    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 662
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_10
    if-nez p1, :cond_14

    .line 666
    const/4 v0, 0x1

    .line 667
    :goto_13
    return v0

    :cond_14
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetResolution(I)Z

    move-result v0

    goto :goto_13
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .registers 5
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 758
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayToast(I)V
    .registers 7
    .param p1, "nIndex"    # I

    .prologue
    .line 346
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_1c

    .line 347
    const-string v2, "SecExternalDisplayService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SecExternalDisplayToast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1c
    const/4 v0, 0x0

    .line 351
    .local v0, "strDefault":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v2

    if-nez v2, :cond_24

    .line 377
    :cond_23
    :goto_23
    return-void

    .line 353
    :cond_24
    sget-object v2, Lcom/android/server/SecExternalDisplayService$5;->$SwitchMap$com$android$server$SecExternalDisplayService$EDSToast:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->toStatus(I)Lcom/android/server/SecExternalDisplayService$EDSToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_74

    .line 371
    :goto_33
    if-eqz v0, :cond_23

    .line 373
    sget-object v2, mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 374
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 375
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_23

    .line 357
    .end local v1    # "toast":Landroid/widget/Toast;
    :pswitch_4a
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040813

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    goto :goto_33

    .line 362
    :pswitch_58
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040816

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    goto :goto_33

    .line 367
    :pswitch_66
    sget-object v2, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040818

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 353
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_58
        :pswitch_66
    .end packed-switch
.end method

.method public SecExternalDisplayType(Z)Z
    .registers 4
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 868
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "SecExternalDisplayService available only from system UID."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_10
    sget-object v0, mEDSInterface:Landroid/hardware/SecExternalDisplayJNIInterface;

    invoke-virtual {v0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method

.method public getCameraAppVersionNumber()F
    .registers 9

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    .line 254
    .local v4, "versionNumber":F
    :try_start_2
    invoke-virtual {p0}, getEDSContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 255
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 256
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 257
    .local v3, "versionName":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 259
    const-string v5, "SecExternalDisplayService_Java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCameraAppVersionNumber. Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , versionNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_3b} :catch_3c

    .line 265
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v3    # "versionName":Ljava/lang/String;
    :goto_3b
    return v4

    .line 260
    :catch_3c
    move-exception v0

    .line 261
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SecExternalDisplayService_Java"

    const-string v6, "com.sec.android.app.camera Package name not found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3b
.end method

.method public getEDSContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 108
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleAlarm(Z)Z
    .registers 6
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 480
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_1d

    .line 481
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Alarm : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_1d
    if-eqz p1, :cond_56

    .line 484
    iput-boolean v3, p0, bIsAlarmRecieved:Z

    .line 485
    iget-boolean v0, p0, bIsAlarmRecieved:Z

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, bPresentation:Z

    if-nez v0, :cond_55

    .line 487
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_4c

    .line 488
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_4c
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    .line 504
    :cond_55
    :goto_55
    return v3

    .line 495
    :cond_56
    iget-boolean v0, p0, bIsAlarmRecieved:Z

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, bPresentation:Z

    if-nez v0, :cond_55

    .line 498
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_81

    .line 499
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_81
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, bIsAlarmRecieved:Z

    goto :goto_55
.end method

.method public handleHDMIConnection(Z)Z
    .registers 8
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 413
    sget-boolean v1, bIsLogEnabled:Z

    if-eqz v1, :cond_1e

    .line 414
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleHDMIConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_1e
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    .line 416
    .local v0, "cable_status":Z
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, p1}, SecExternalDisplaySetStatus(IZ)Z

    .line 417
    invoke-direct {p0, p1}, SecExternalDisplaySetWakeLock(Z)V

    .line 418
    if-ne p1, v4, :cond_9c

    .line 420
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 421
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, SecExternalDisplaySetStatus(IZ)Z

    .line 423
    :cond_4b
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 424
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, SecExternalDisplaySetStatus(IZ)Z

    .line 426
    :cond_60
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 427
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_WFD_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayToast(I)V

    .line 434
    :goto_75
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 436
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayBlankDisplay(I)Z

    .line 452
    :cond_8a
    :goto_8a
    return v4

    .line 430
    :cond_8b
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI Connected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_CONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayToast(I)V

    goto :goto_75

    .line 440
    :cond_9c
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, " HDMI DisConnected : "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 443
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayBlankDisplay(I)Z

    .line 446
    :cond_b8
    if-ne v0, v4, :cond_8a

    .line 448
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSToast;->EDS_TOAST_HDMI_DISCONNECTED:Lcom/android/server/SecExternalDisplayService$EDSToast;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSToast;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayToast(I)V

    goto :goto_8a
.end method

.method public handlePresentation(Z)V
    .registers 6
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    .line 389
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_1d

    .line 390
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handlePresentation Condition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1d
    if-eqz p1, :cond_45

    .line 392
    iput-boolean v3, p0, bPresentation:Z

    .line 396
    :goto_21
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v3, :cond_44

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v3, :cond_44

    .line 399
    if-eqz p1, :cond_49

    .line 400
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    .line 404
    :cond_44
    :goto_44
    return-void

    .line 394
    :cond_45
    const/4 v0, 0x0

    iput-boolean v0, p0, bPresentation:Z

    goto :goto_21

    .line 402
    :cond_49
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    goto :goto_44
.end method

.method public handleSmartDockConnection(I)Z
    .registers 8
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 547
    const-string v1, "SecExternalDisplayService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleSmartDockConnection status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Intent.EXTRA_USB_HID_STATE_ATTACHED value is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    if-ne v4, p1, :cond_a7

    .line 550
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse  Connected  Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v4}, SecExternalDisplaySetStatus(IZ)Z

    .line 552
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_43

    .line 604
    :cond_42
    :goto_42
    return v4

    .line 555
    :cond_43
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_68

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-ne v1, v4, :cond_68

    iget-boolean v1, p0, bPresentation:Z

    if-nez v1, :cond_68

    .line 558
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayBlankDisplay(I)Z

    .line 570
    :cond_68
    :goto_68
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 571
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_85

    .line 572
    sget-object v1, mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 573
    :cond_85
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_42

    .line 575
    :try_start_89
    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_94

    .line 576
    new-instance v1, Lcom/android/server/SecExternalDisplayService$3;

    invoke-direct {v1, p0}, Lcom/android/server/SecExternalDisplayService$3;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    iput-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 594
    :cond_94
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_9d
    .catch Ljava/lang/SecurityException; {:try_start_89 .. :try_end_9d} :catch_9e

    goto :goto_42

    .line 595
    :catch_9e
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Phone window manager doesn\'t have the permssion READ_PHONE_STATE. please defines it via <uses-permssion> in AndroidManifest.xml."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 561
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_a7
    if-nez p1, :cond_68

    .line 562
    const-string v1, "SecExternalDisplayService_Java"

    const-string v2, "Mouse Disconnected from Smart Dock!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayGetStatus(I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 565
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, SecExternalDisplayBlankDisplay(I)Z

    .line 566
    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1, v5}, SecExternalDisplaySetStatus(IZ)Z

    goto :goto_68

    .line 601
    :cond_cf
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_42

    .line 602
    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_42
.end method

.method public handleVideo(Z)Z
    .registers 5
    .param p1, "status"    # Z

    .prologue
    .line 513
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_1c

    .line 514
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle Video : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_1c
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_VIDEO:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, p1}, SecExternalDisplaySetStatus(IZ)Z

    .line 516
    if-eqz p1, :cond_6b

    .line 519
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 520
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, SecExternalDisplaySetStatus(IZ)Z

    .line 522
    :cond_49
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 524
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_60

    .line 525
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Destroy SmartDock Surface during videoplay  !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_60
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    .line 537
    :cond_69
    :goto_69
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_6b
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 532
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_82

    .line 533
    const-string v0, "SecExternalDisplayService_Java"

    const-string v1, "Create SmartDock Surface after video is stopped!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_82
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, SecExternalDisplayBlankDisplay(I)Z

    goto :goto_69
.end method

.method public handleWFDConnection(I)Z
    .registers 6
    .param p1, "status"    # I

    .prologue
    const/4 v3, 0x1

    .line 462
    const-string v0, "SecExternalDisplayService_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllShare Cast Connected Status : !! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-ne p1, v3, :cond_26

    .line 465
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0, v3}, SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    .line 467
    :goto_25
    return v0

    :cond_26
    sget-object v0, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_WFD:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    goto :goto_25
.end method
