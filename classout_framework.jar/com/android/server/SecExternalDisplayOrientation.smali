.class public Lcom/android/server/SecExternalDisplayOrientation;
.super Ljava/lang/Object;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayOrientation$4;,
        Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;,
        Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayOrientation_Java"

.field private static bIsCameraOn:Z

.field protected static bIsLogEnabled:Z

.field private static bIsTabletConnected:Z

.field private static newOrientation:I


# instance fields
.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDockSurfaceParameter:I

.field protected mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

.field mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

.field private final mSidesyncContentObserver:Landroid/database/ContentObserver;

.field private mSidesyncDisplayId:I

.field private setOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-boolean v0, bIsCameraOn:Z

    .line 52
    sput-boolean v0, bIsTabletConnected:Z

    .line 54
    sput v0, newOrientation:I

    .line 58
    sput-boolean v0, bIsLogEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    .line 55
    iput v1, p0, setOrientation:I

    .line 56
    iput v1, p0, mDockSurfaceParameter:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, mSidesyncDisplayId:I

    .line 272
    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$2;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayOrientation$2;-><init>(Lcom/android/server/SecExternalDisplayOrientation;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 348
    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/SecExternalDisplayOrientation$3;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/os/Handler;)V

    iput-object v0, p0, mSidesyncContentObserver:Landroid/database/ContentObserver;

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .registers 13
    .param p1, "_obj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v6, 0x0

    iput-object v6, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    .line 55
    iput v9, p0, setOrientation:I

    .line 56
    iput v9, p0, mDockSurfaceParameter:I

    .line 59
    const/4 v6, -0x1

    iput v6, p0, mSidesyncDisplayId:I

    .line 272
    new-instance v6, Lcom/android/server/SecExternalDisplayOrientation$2;

    invoke-direct {v6, p0}, Lcom/android/server/SecExternalDisplayOrientation$2;-><init>(Lcom/android/server/SecExternalDisplayOrientation;)V

    iput-object v6, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 348
    new-instance v6, Lcom/android/server/SecExternalDisplayOrientation$3;

    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v6, p0, v7}, Lcom/android/server/SecExternalDisplayOrientation$3;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/os/Handler;)V

    iput-object v6, p0, mSidesyncContentObserver:Landroid/database/ContentObserver;

    .line 169
    iput-object p1, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    .line 170
    const-string v6, "SecExternalDisplayOrientation_Java"

    const-string v7, "SecExternalDisplayService constructor"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v6, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, setOrientationListenerForCamera(Landroid/content/Context;)V

    .line 172
    const-string/jumbo v6, "persist.sys.SecEDS.Logs"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, bIsLogEnabled:Z

    .line 174
    iget-object v6, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v6}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "display"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 175
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v4

    .line 176
    .local v4, "presentationDisplays":[Landroid/view/Display;
    aget-object v0, v4, v9

    .line 177
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 178
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 179
    .local v2, "height":I
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 181
    .local v3, "orientation":I
    if-le v5, v2, :cond_68

    if-eqz v3, :cond_6f

    const/4 v6, 0x2

    if-eq v3, v6, :cond_6f

    :cond_68
    if-ge v5, v2, :cond_79

    if-eq v3, v10, :cond_6f

    const/4 v6, 0x3

    if-ne v3, v6, :cond_79

    .line 182
    :cond_6f
    sput-boolean v10, bIsTabletConnected:Z

    .line 185
    :goto_71
    iget-object v6, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-boolean v7, bIsTabletConnected:Z

    invoke-virtual {v6, v7}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayType(Z)Z

    .line 186
    return-void

    .line 184
    :cond_79
    sput-boolean v9, bIsTabletConnected:Z

    goto :goto_71
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, bIsCameraOn:Z

    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 45
    sget v0, newOrientation:I

    return v0
.end method

.method static synthetic access$102(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 45
    sput p0, newOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/SecExternalDisplayOrientation;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayOrientation;

    .prologue
    .line 45
    iget v0, p0, mSidesyncDisplayId:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/SecExternalDisplayOrientation;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayOrientation;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, mSidesyncDisplayId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/SecExternalDisplayOrientation;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayOrientation;

    .prologue
    .line 45
    invoke-direct {p0}, handleBlankDispDuringSidesync()V

    return-void
.end method

.method private handleBlankDispDuringSidesync()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "blankDisp":Z
    :try_start_3
    iget-object v4, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v4}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_presentation"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_3f

    move v0, v2

    .line 335
    :goto_19
    if-eqz v0, :cond_41

    .line 336
    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBlankDispDuringSidesync, MODE_OFF, blankDisp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 345
    :goto_3e
    return-void

    :cond_3f
    move v0, v3

    .line 332
    goto :goto_19

    .line 339
    :cond_41
    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleBlankDispDuringSidesync, MODE_ON, blankDisp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_64} :catch_65

    goto :goto_3e

    .line 342
    :catch_65
    move-exception v1

    .line 343
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception getSideSyncSetting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3e
.end method

.method private registerSideSync_SettingObserver(Z)V
    .registers 7
    .param p1, "register"    # Z

    .prologue
    const/4 v4, 0x1

    .line 359
    if-ne p1, v4, :cond_26

    .line 360
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_e

    .line 361
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Registering ContentObserver for sidesync_source_presentation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_e
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sidesync_source_presentation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mSidesyncContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    :goto_25
    return-void

    .line 365
    :cond_26
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_31

    .line 366
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Unregister ContentObserver for sidesync_source_presentation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_31
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mSidesyncContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_25
.end method

.method private setOrientationListenerForCamera(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iget-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_b

    .line 112
    new-instance v0, Lcom/android/server/SecExternalDisplayOrientation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/SecExternalDisplayOrientation$1;-><init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/content/Context;)V

    iput-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    .line 161
    :cond_b
    return-void
.end method


# virtual methods
.method public SecExternalDisplaySetOrientationMode(Z)V
    .registers 3
    .param p1, "bMode"    # Z

    .prologue
    .line 96
    if-eqz p1, :cond_c

    .line 98
    iget-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_b

    .line 99
    iget-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 106
    :cond_b
    :goto_b
    return-void

    .line 103
    :cond_c
    iget-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, mOrientationListenerForCamera:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_b
.end method

.method public handleCameraConnection(I)Z
    .registers 7
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 190
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_1e

    .line 191
    const-string v2, "SecExternalDisplayOrientation_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle Camera Connection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_1e
    invoke-static {p1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v2

    if-nez v2, :cond_25

    .line 268
    :goto_24
    return v0

    .line 195
    :cond_25
    sget-object v2, Lcom/android/server/SecExternalDisplayOrientation$4;->$SwitchMap$com$android$server$SecExternalDisplayOrientation$EDS_CameraStatus:[I

    invoke-static {p1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->toStatus(I)Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_198

    :cond_34
    :goto_34
    move v0, v1

    .line 268
    goto :goto_24

    .line 200
    :pswitch_36
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 202
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_4c

    .line 203
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v2, "entered Camera Rear Case"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_4c
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 211
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v1, :cond_a8

    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v1, :cond_a8

    .line 214
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_9d

    .line 215
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v2, "Destroy SmartDock Surface"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_9d
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 219
    :cond_a8
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v1, :cond_fb

    .line 220
    sget-boolean v0, bIsCameraOn:Z

    if-eqz v0, :cond_110

    .line 221
    sget v0, newOrientation:I

    add-int/lit16 v0, v0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, setOrientation:I

    .line 222
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_e0

    .line 223
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Calling Camera with setOrientation Value :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, setOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_e0
    iget v0, p0, setOrientation:I

    sget-object v2, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v2

    if-eq v0, v2, :cond_f4

    iget v0, p0, setOrientation:I

    sget-object v2, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Inverse_Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_fb

    .line 225
    :cond_f4
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget v2, p0, setOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 232
    :cond_fb
    :goto_fb
    sput-boolean v1, bIsCameraOn:Z

    .line 234
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-ne v0, v1, :cond_34

    .line 235
    invoke-virtual {p0, v1}, SecExternalDisplaySetOrientationMode(Z)V

    goto/16 :goto_34

    .line 228
    :cond_110
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget v2, newOrientation:I

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto :goto_fb

    .line 241
    :pswitch_118
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_CAMERA_START:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 243
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_12e

    .line 244
    const-string v2, "SecExternalDisplayOrientation_Java"

    const-string v3, "Camera Stop Case"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_12e
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_HDMI:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-ne v2, v1, :cond_166

    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SMARTDOCK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-ne v2, v1, :cond_166

    .line 249
    sget-boolean v2, bIsLogEnabled:Z

    if-eqz v2, :cond_155

    .line 250
    const-string v2, "SecExternalDisplayOrientation_Java"

    const-string v3, "Create SmartDock Surface"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_155
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-boolean v2, v2, Lcom/android/server/SecExternalDisplayService;->CALL_CONNECT:Z

    if-nez v2, :cond_166

    .line 252
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_OFF:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 256
    :cond_166
    sput-boolean v0, bIsCameraOn:Z

    .line 257
    iget-object v2, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v3, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v3}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v2

    if-ne v2, v1, :cond_34

    .line 258
    invoke-virtual {p0, v0}, SecExternalDisplaySetOrientationMode(Z)V

    .line 259
    sget-boolean v0, bIsTabletConnected:Z

    if-eqz v0, :cond_18a

    .line 260
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Landscape:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_34

    .line 262
    :cond_18a
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v2, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    goto/16 :goto_34

    .line 195
    nop

    :pswitch_data_198
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_118
    .end packed-switch
.end method

.method public handleKddiAuShareLink(Z)Z
    .registers 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 431
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_1f

    .line 432
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleKddiAuShareLink with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1f
    if-eqz p1, :cond_4f

    .line 435
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 436
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 438
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4e

    .line 439
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 450
    :cond_4e
    :goto_4e
    return v3

    .line 442
    :cond_4f
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 443
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 445
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4e

    .line 446
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_4e
.end method

.method public handleRVFConnection(Z)Z
    .registers 5
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 462
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 464
    :cond_1a
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 465
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_KDDI_AUSHARELINK:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 467
    :cond_33
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_4f

    .line 468
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleRVFConnection with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_4f
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayGetStatus(I)Z

    move-result v0

    if-eq p1, v0, :cond_68

    .line 470
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->Potrait:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 473
    :cond_68
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_RVF:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public handleSideSyncConnection(Z)Z
    .registers 9
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    const/4 v3, 0x1

    .line 381
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_20

    .line 382
    const-string v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered handleSideSyncConnection with status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_20
    if-eqz p1, :cond_71

    .line 386
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Start:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 387
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 388
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4e

    .line 390
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 394
    :cond_4e
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_6d

    iget-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_6d

    .line 395
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_63

    .line 396
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Registering display listener for sidesync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_63
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 399
    :cond_6d
    invoke-direct {p0, v3}, registerSideSync_SettingObserver(Z)V

    .line 420
    :cond_70
    :goto_70
    return v3

    .line 403
    :cond_71
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_8f

    iget-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_8f

    .line 404
    sget-boolean v0, bIsLogEnabled:Z

    if-eqz v0, :cond_86

    .line 405
    const-string v0, "SecExternalDisplayOrientation_Java"

    const-string v1, "Unregister display listener for sidesync"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_86
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    iget-object v0, v0, Lcom/android/server/SecExternalDisplayService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 408
    :cond_8f
    invoke-direct {p0, v6}, registerSideSync_SettingObserver(Z)V

    .line 410
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSBlank;->EDS_POWER_MODE_ON:Lcom/android/server/SecExternalDisplayService$EDSBlank;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSBlank;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayBlankDisplay(I)Z

    .line 412
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->BufMirrorMode_Stop:Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayOrientation$EDS_Transform;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetExternalUITransform(I)Z

    .line 413
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SIDESYNC:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    .line 414
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getCameraAppVersionNumber()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_70

    .line 416
    iget-object v0, p0, mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v1, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_STATUS_CAMERA_ROTATION_SUPPORT:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v1}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto :goto_70
.end method
