.class Lcom/android/server/wm/WindowManagerService$LayoutFields;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutFields"
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2


# instance fields
.field private mButtonBrightness:F

.field private mButtonLightTimeout:J

.field mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mOrientationChangeComplete:Z

.field mPreferredModeId:I

.field mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private mScreenDimDuration:J

.field private mSyswin:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 1074
    iput-object p1, p0, this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1082
    iput-boolean v1, p0, mWallpaperForceHidingChanged:Z

    .line 1083
    iput-boolean v1, p0, mWallpaperMayChange:Z

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, mOrientationChangeComplete:Z

    .line 1085
    iput-object v5, p0, mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1086
    iput-object v5, p0, mHoldScreen:Lcom/android/server/wm/Session;

    .line 1087
    iput-boolean v1, p0, mObscured:Z

    .line 1088
    iput-boolean v1, p0, mSyswin:Z

    .line 1089
    iput v4, p0, mScreenBrightness:F

    .line 1090
    iput v4, p0, mButtonBrightness:F

    .line 1091
    iput-wide v2, p0, mUserActivityTimeout:J

    .line 1093
    iput-wide v2, p0, mScreenDimDuration:J

    .line 1094
    iput-wide v2, p0, mButtonLightTimeout:J

    .line 1096
    iput-boolean v1, p0, mUpdateRotation:Z

    .line 1097
    iput-boolean v1, p0, mWallpaperActionPending:Z

    .line 1101
    iput-boolean v1, p0, mDisplayHasContent:Z

    .line 1105
    iput-boolean v1, p0, mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1107
    const/4 v0, 0x0

    iput v0, p0, mPreferredRefreshRate:F

    .line 1109
    iput v1, p0, mPreferredModeId:I

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-boolean v0, p0, mObscured:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 1074
    iput-boolean p1, p0, mObscured:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-object v0, p0, mHoldScreen:Lcom/android/server/wm/Session;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/wm/WindowManagerService$LayoutFields;Lcom/android/server/wm/Session;)Lcom/android/server/wm/Session;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Lcom/android/server/wm/Session;

    .prologue
    .line 1074
    iput-object p1, p0, mHoldScreen:Lcom/android/server/wm/Session;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-boolean v0, p0, mSyswin:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 1074
    iput-boolean p1, p0, mSyswin:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget v0, p0, mScreenBrightness:F

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 1074
    iput p1, p0, mScreenBrightness:F

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/wm/WindowManagerService$LayoutFields;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget v0, p0, mButtonBrightness:F

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/wm/WindowManagerService$LayoutFields;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # F

    .prologue
    .line 1074
    iput p1, p0, mButtonBrightness:F

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-wide v0, p0, mUserActivityTimeout:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 1074
    iput-wide p1, p0, mUserActivityTimeout:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-wide v0, p0, mScreenDimDuration:J

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 1074
    iput-wide p1, p0, mScreenDimDuration:J

    return-wide p1
.end method

.method static synthetic access$3000(Lcom/android/server/wm/WindowManagerService$LayoutFields;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-wide v0, p0, mButtonLightTimeout:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/android/server/wm/WindowManagerService$LayoutFields;J)J
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # J

    .prologue
    .line 1074
    iput-wide p1, p0, mButtonLightTimeout:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/server/wm/WindowManagerService$LayoutFields;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;

    .prologue
    .line 1074
    iget-boolean v0, p0, mUpdateRotation:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/wm/WindowManagerService$LayoutFields;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$LayoutFields;
    .param p1, "x1"    # Z

    .prologue
    .line 1074
    iput-boolean p1, p0, mUpdateRotation:Z

    return p1
.end method
