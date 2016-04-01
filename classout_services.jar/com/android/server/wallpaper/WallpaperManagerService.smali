.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field private static final INITIALIZE_KNOX_WALLPAPER:I = 0x3e9

.field static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETUP_KNOX_WALLPAPER:I = 0x3eb

.field private static final SWITCH_KNOX_WALLPAPER:I = 0x3ea

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_2:Ljava/lang/String; = "wallpaper2"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field public final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

.field final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBackupRunning:Z

.field private mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

.field final mContext:Landroid/content/Context;

.field private mCurrSimId:I

.field private mCurrentPersonaId:I

.field mCurrentUserId:I

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field mLastWallpaperMaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mPrevSimId:I

.field private mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field whichSimSetWallpaper:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 164
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 711
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 141
    new-array v4, v7, [Ljava/lang/Object;

    iput-object v4, p0, mLock:Ljava/lang/Object;

    .line 152
    iput v7, p0, whichSimSetWallpaper:I

    .line 153
    const-string v4, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    iput-object v4, p0, REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 154
    const-string v4, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    iput-object v4, p0, RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 155
    const-string v4, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    iput-object v4, p0, REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 156
    const-string v4, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    iput-object v4, p0, RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 157
    iput-boolean v7, p0, mBackupRunning:Z

    .line 158
    iput v7, p0, mCurrSimId:I

    .line 159
    iput v7, p0, mPrevSimId:I

    .line 168
    iput-object v8, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 175
    iput v7, p0, mCurrentPersonaId:I

    .line 318
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, mWallpaperMap:Landroid/util/SparseArray;

    .line 321
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, mLastWallpaperMaps:Landroid/util/SparseArray;

    .line 2508
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 712
    const-string v4, "WallpaperManagerService"

    const-string v5, "WallpaperService startup"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 714
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, mImageWallpaper:Landroid/content/ComponentName;

    .line 716
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 718
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 719
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "appops"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 720
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 721
    iget-object v4, p0, mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v8, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 722
    invoke-static {v7}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 723
    invoke-direct {p0, v7}, loadSettingsLocked(I)V

    .line 725
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 726
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 727
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 728
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v0, :cond_eb

    .line 729
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 730
    invoke-virtual {v0, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 731
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v2, 0x0

    .line 732
    .local v2, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_eb

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_eb

    .line 733
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 734
    .restart local v2    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_eb

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_eb

    .line 735
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, loadSettingsLocked(I)V

    .line 736
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadSettingsLocked is called for user -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v0    # "mPersona":Landroid/os/PersonaManager;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_eb
    return-void
.end method

.method private SimStatusVerify()I
    .registers 6

    .prologue
    .line 2173
    const/4 v0, 0x0

    .line 2174
    .local v0, "currSimId":I
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStatusVerify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual {p0}, getCurrSimID()I

    move-result v0

    .line 2178
    const-string/jumbo v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2186
    .local v1, "simSlot":Ljava/lang/String;
    invoke-virtual {p0}, checkWallpaperForMultiSimSkip()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2187
    const/4 v0, 0x0

    .line 2189
    :cond_31
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperManagerService->SimStatusVerify slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    if-gez v0, :cond_56

    .line 2192
    const/4 v0, 0x0

    .line 2194
    :cond_56
    return v0
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 137
    invoke-static {p0}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 137
    invoke-direct {p0, p1}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 137
    iget v0, p0, mCurrentPersonaId:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mCurrentPersonaId:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, setKnoxWallpaperMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 137
    invoke-direct {p0, p1}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(I)Lcom/android/internal/util/JournaledFile;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 137
    invoke-static {p0}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, setKnoxWallpaper(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 137
    iget v0, p0, mCurrSimId:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mCurrSimId:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 137
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 137
    iget v0, p0, mPrevSimId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 137
    iput p1, p0, mPrevSimId:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, mBackupRunning:Z

    return p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1800
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1801
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1804
    :cond_2f
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 1890
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1894
    .end local p3    # "defValue":I
    :goto_7
    return p3

    .restart local p3    # "defValue":I
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_7
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 1038
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1039
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 1040
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1041
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1042
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 2010
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2011
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2012
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 2396
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2398
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_12

    .line 2399
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 2401
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 746
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperInfobyData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperInfo;
    .registers 16
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v11, 0x0

    .line 1284
    const/4 v8, 0x0

    .line 1286
    .local v8, "wi":Landroid/app/WallpaperInfo;
    :try_start_2
    iget v6, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 1287
    .local v6, "serviceUserId":I
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1288
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v10, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v12, 0x1080

    invoke-interface {v10, v0, v12, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    .line 1291
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    if-nez v7, :cond_4c

    .line 1293
    const-string v10, "WallpaperManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Attempted wallpaper "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is unavailable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempted wallpape  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " is unavailable"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1328
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :goto_4b
    return-object v10

    .line 1298
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v6    # "serviceUserId":I
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    :cond_4c
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1300
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x80

    invoke-interface {v10, v3, v12, v13, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    .line 1305
    .local v4, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_96

    .line 1306
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v5, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1307
    .local v5, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b4

    iget-object v10, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_85} :catch_b7

    move-result v10

    if-eqz v10, :cond_b4

    .line 1310
    :try_start_88
    new-instance v9, Landroid/app/WallpaperInfo;

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v12, v10}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_88 .. :try_end_95} :catch_98
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_95} :catch_a6
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_95} :catch_b7

    .end local v8    # "wi":Landroid/app/WallpaperInfo;
    .local v9, "wi":Landroid/app/WallpaperInfo;
    move-object v8, v9

    .end local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v9    # "wi":Landroid/app/WallpaperInfo;
    .restart local v8    # "wi":Landroid/app/WallpaperInfo;
    :cond_96
    move-object v10, v8

    .line 1324
    goto :goto_4b

    .line 1311
    .restart local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_98
    move-exception v1

    .line 1312
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_99
    const-string v10, "WallpaperManagerService"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1313
    const-string/jumbo v10, "wallpaer info parse error  "

    invoke-virtual {p0, v10}, writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1314
    goto :goto_4b

    .line 1315
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_a6
    move-exception v1

    .line 1316
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "WallpaperManagerService"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    const-string/jumbo v10, "wallpaer info IO exception  "

    invoke-virtual {p0, v10}, writeResetLog(Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_b2} :catch_b7

    move-object v10, v11

    .line 1318
    goto :goto_4b

    .line 1305
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 1326
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "rsi":Landroid/content/pm/ServiceInfo;
    .end local v6    # "serviceUserId":I
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    :catch_b7
    move-exception v1

    .line 1327
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "wallpaer info exception  "

    invoke-virtual {p0, v10}, writeResetLog(Ljava/lang/String;)V

    move-object v10, v11

    .line 1328
    goto :goto_4b
.end method

.method private getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 1905
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1906
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_15

    .line 1907
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    .line 1908
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1910
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_15
    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .registers 20
    .param p1, "userId"    # I

    .prologue
    .line 1914
    const-string v13, "WallpaperManagerService"

    const-string/jumbo v14, "loadSettingsLocked"

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-static/range {p1 .. p1}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1917
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 1918
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 1919
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1a

    .line 1921
    invoke-direct/range {p0 .. p0}, migrateFromOld()V

    .line 1923
    :cond_1a
    move-object/from16 v0, p0

    iget-object v13, v0, mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1924
    .local v12, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v12, :cond_38

    .line 1925
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1926
    .restart local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v13, v0, mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1928
    :cond_38
    const/4 v9, 0x0

    .line 1930
    .local v9, "success":Z
    :try_start_39
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3e} :catch_1b2
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_3e} :catch_1bc
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3e} :catch_1e2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3e} :catch_208
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_22e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39 .. :try_end_3e} :catch_254

    .line 1931
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_3e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1932
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1936
    :cond_4b
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 1937
    .local v11, "type":I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_150

    .line 1938
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1939
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v13, "wp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_150

    .line 1940
    const/4 v13, 0x0

    const-string/jumbo v14, "width"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1941
    const/4 v13, 0x0

    const-string/jumbo v14, "height"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1943
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingLeft"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 1944
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingTop"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 1945
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingRight"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 1946
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingBottom"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 1947
    const/4 v13, 0x0

    const-string/jumbo v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1948
    const/4 v13, 0x0

    const-string v14, "component"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1949
    .local v2, "comp":Ljava/lang/String;
    if-eqz v2, :cond_1af

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    :goto_ca
    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1952
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_de

    const-string v13, "android"

    iget-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e4

    .line 1955
    :cond_de
    move-object/from16 v0, p0

    iget-object v13, v0, mImageWallpaper:Landroid/content/ComponentName;

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1959
    :cond_e4
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mWidth:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mHeight:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mName:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mNextWallpaperComponent:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_150} :catch_28e
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_150} :catch_28a
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_150} :catch_286
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_150} :catch_283
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_150} :catch_280
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3e .. :try_end_150} :catch_27d

    .line 1967
    .end local v2    # "comp":Ljava/lang/String;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_150
    const/4 v13, 0x1

    if-ne v11, v13, :cond_4b

    .line 1968
    const/4 v9, 0x1

    move-object v7, v8

    .line 1983
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_155
    if-eqz v7, :cond_15a

    .line 1984
    :try_start_157
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_27a

    .line 1990
    :cond_15a
    :goto_15a
    if-nez v9, :cond_19e

    .line 1991
    const-string/jumbo v13, "load wallpaper is failed set default"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, writeResetLog(Ljava/lang/String;)V

    .line 1992
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Safe mode:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, writeResetLog(Ljava/lang/String;Z)V

    .line 1993
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1994
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1995
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 1996
    const-string v13, ""

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2000
    :cond_19e
    invoke-direct/range {p0 .. p0}, getMaximumSizeDimension()I

    move-result v1

    .line 2001
    .local v1, "baseSize":I
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v13, v1, :cond_1a8

    .line 2002
    iput v1, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 2004
    :cond_1a8
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v13, v1, :cond_1ae

    .line 2005
    iput v1, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 2007
    :cond_1ae
    return-void

    .line 1949
    .end local v1    # "baseSize":I
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "comp":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_1af
    const/4 v13, 0x0

    goto/16 :goto_ca

    .line 1969
    .end local v2    # "comp":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_1b2
    move-exception v3

    .line 1970
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1b3
    const-string v13, "WallpaperManagerService"

    const-string/jumbo v14, "no current wallpaper -- first boot?"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 1971
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1bc
    move-exception v3

    .line 1972
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_1bd
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 1973
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1e2
    move-exception v3

    .line 1974
    .local v3, "e":Ljava/lang/NumberFormatException;
    :goto_1e3
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 1975
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_208
    move-exception v3

    .line 1976
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_209
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 1977
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_22e
    move-exception v3

    .line 1978
    .local v3, "e":Ljava/io/IOException;
    :goto_22f
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 1979
    .end local v3    # "e":Ljava/io/IOException;
    :catch_254
    move-exception v3

    .line 1980
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_255
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 1986
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_27a
    move-exception v13

    goto/16 :goto_15a

    .line 1979
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_27d
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_255

    .line 1977
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_280
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_22f

    .line 1975
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_283
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_209

    .line 1973
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_286
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1e3

    .line 1971
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_28a
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1bd

    .line 1969
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_28e
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1b3
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .prologue
    .line 1816
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1817
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1876
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "migrateFromOld"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1878
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1879
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1880
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1881
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1883
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_2c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1884
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1885
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1887
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_41
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1784
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1785
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 1787
    :try_start_b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_36

    .line 1785
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1794
    :cond_1b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1795
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1797
    return-void

    .line 1788
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v3

    goto :goto_18
.end method

.method private registerBackupRestoreReceiver()V
    .registers 4

    .prologue
    .line 2340
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "registerBackupRestoreReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2342
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2343
    const-string v1, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2344
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2345
    const-string v1, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2346
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    .line 2347
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2348
    return-void
.end method

.method private registerSimChangedReceiver()V
    .registers 4

    .prologue
    .line 2325
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "registerSimChangedReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2329
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_29

    .line 2330
    const-string v1, "WallpaperManagerService"

    const-string v2, "ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED & ACTION_SUBINFO_RECORD_UPDATED"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2332
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2335
    :cond_29
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    .line 2336
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2337
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1821
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "saveSettingsLocked"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1823
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1825
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_e2

    .line 1826
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_19
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1827
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1828
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1830
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1831
    const/4 v5, 0x0

    const-string/jumbo v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1832
    const/4 v5, 0x0

    const-string/jumbo v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1833
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_66

    .line 1834
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1836
    :cond_66
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_7b

    .line 1837
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1839
    :cond_7b
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_90

    .line 1840
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1842
    :cond_90
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_a5

    .line 1843
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1845
    :cond_a5
    const/4 v5, 0x0

    const-string/jumbo v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1846
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_c8

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    .line 1848
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1851
    :cond_c8
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1853
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1854
    if-eqz v4, :cond_dd

    .line 1855
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 1856
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1857
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1859
    :cond_dd
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_e0} :catch_fc

    move-object v3, v4

    .line 1873
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_e1
    return-void

    .line 1860
    :catch_e2
    move-exception v0

    .line 1862
    .local v0, "e":Ljava/io/IOException;
    :goto_e3
    if-eqz v3, :cond_e8

    .line 1863
    :try_start_e5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_fa

    .line 1869
    :cond_e8
    :goto_e8
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v6, "journal.rollback"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1871
    const-string/jumbo v5, "roll back"

    invoke-virtual {p0, v5}, writeResetLog(Ljava/lang/String;)V

    goto :goto_e1

    .line 1865
    :catch_fa
    move-exception v5

    goto :goto_e8

    .line 1860
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_fc
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_e3
.end method

.method private setKnoxWallpaper(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2411
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKnoxWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2413
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2414
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2415
    return-void
.end method

.method private setKnoxWallpaperMessage(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 2419
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2420
    :try_start_3
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    iget-object v8, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2423
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_42

    .line 2424
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wallpaper not yet initialized for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2458
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3f
    move-exception v8

    monitor-exit v9
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v8

    .line 2426
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_42
    :try_start_42
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    if-nez v8, :cond_51

    .line 2427
    const-string v8, "WallpaperManagerService"

    const-string v10, "PMS cannot be null"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    monitor-exit v9

    .line 2460
    :goto_50
    return-void

    .line 2430
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_3f

    move-result-wide v4

    .line 2432
    .local v4, "ident":J
    :try_start_55
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getKnoxWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 2433
    .local v0, "data":Ljava/io/InputStream;
    if-nez v0, :cond_7c

    .line 2434
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX wallpaper stream cannot be null for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_77} :catch_aa
    .catchall {:try_start_55 .. :try_end_77} :catchall_c8

    .line 2456
    :try_start_77
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_3f

    goto :goto_50

    .line 2437
    :cond_7c
    const/4 v8, 0x0

    :try_start_7d
    invoke-virtual {p0, v8, v7}, updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2438
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_86

    .line 2439
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_aa
    .catchall {:try_start_7d .. :try_end_86} :catchall_c8

    .line 2441
    :cond_86
    const/4 v2, 0x0

    .line 2443
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_87
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_9e

    .line 2444
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_8c
    invoke-direct {p0, v0, v3}, setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_cd

    .line 2446
    if-eqz v3, :cond_94

    .line 2447
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2449
    :cond_94
    if-eqz v0, :cond_99

    .line 2450
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_99} :catch_aa
    .catchall {:try_start_91 .. :try_end_99} :catchall_c8

    .line 2456
    :cond_99
    :try_start_99
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_9c
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_3f

    goto :goto_50

    .line 2446
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_9e
    move-exception v8

    :goto_9f
    if-eqz v2, :cond_a4

    .line 2447
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2449
    :cond_a4
    if-eqz v0, :cond_a9

    .line 2450
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a9
    throw v8
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_aa} :catch_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_c8

    .line 2453
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_aa
    move-exception v1

    .line 2454
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper Exception-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_c8

    .line 2456
    :try_start_c4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_c8
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_cd
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_3f

    .line 2446
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_cd
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9f
.end method

.method private setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2464
    const v2, 0x8000

    new-array v1, v2, [B

    .line 2466
    .local v1, "buffer":[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_10

    .line 2467
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 2469
    :cond_10
    return-void
.end method

.method private simInserted(I)Z
    .registers 6
    .param p1, "simSlot"    # I

    .prologue
    .line 2246
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2248
    .local v0, "iccType":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "simInserted() : simSlot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iccType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2252
    const/4 v1, 0x1

    .line 2254
    :goto_39
    return v1

    :cond_3a
    const/4 v1, 0x0

    goto :goto_39
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1760
    const-string v0, "WallpaperManagerService"

    const-string v1, "attachServiceLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :try_start_9
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1b

    .line 1781
    :cond_1a
    :goto_1a
    return-void

    .line 1774
    :catch_1b
    move-exception v8

    .line 1775
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1776
    const-string v0, "Failed attaching wallpaper; clearing "

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 1777
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_1a

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1778
    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_1a
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 30
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1533
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    if-nez p2, :cond_50

    .line 1536
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_50

    .line 1537
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v4, :cond_3a

    .line 1538
    if-nez p1, :cond_50

    .line 1539
    const-string v4, "WallpaperManagerService"

    const-string v5, "bindWallpaperComponentLocked: still using default"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const-string v4, "bindWallpaperComponentLocked: still using default "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1542
    const/4 v4, 0x1

    .line 1722
    :goto_39
    return v4

    .line 1544
    :cond_3a
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 1546
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "same wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    const/4 v4, 0x1

    goto :goto_39

    .line 1553
    :cond_50
    if-nez p1, :cond_71

    .line 1554
    :try_start_52
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1555
    if-nez p1, :cond_71

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1560
    const-string v4, "WallpaperManagerService"

    const-string v5, "Using image wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const-string v4, "Using image wallpaper "

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1564
    :cond_71
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v20, v0

    .line 1565
    .local v20, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v5, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v4, v0, v5, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v21

    .line 1567
    .local v21, "si":Landroid/content/pm/ServiceInfo;
    if-nez v21, :cond_ca

    .line 1569
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is unavailable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1571
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1573
    :cond_ca
    const-string v4, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14a

    .line 1574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1577
    .local v16, "msg":Ljava/lang/String;
    const-string v4, "Selected service does not require "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1578
    if-eqz p3, :cond_140

    .line 1579
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_fc
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_fc} :catch_fc

    .line 1713
    .end local v16    # "msg":Ljava/lang/String;
    .end local v20    # "serviceUserId":I
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    :catch_fc
    move-exception v11

    .line 1714
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1715
    .restart local v16    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote exception for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1716
    if-eqz p3, :cond_441

    .line 1717
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1581
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v20    # "serviceUserId":I
    .restart local v21    # "si":Landroid/content/pm/ServiceInfo;
    :cond_140
    :try_start_140
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1585
    .end local v16    # "msg":Ljava/lang/String;
    :cond_14a
    const/16 v22, 0x0

    .line 1587
    .local v22, "wi":Landroid/app/WallpaperInfo;
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    .local v13, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2f2

    move-object/from16 v0, p0

    iget-object v4, v0, mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f2

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    move/from16 v0, v20

    invoke-interface {v4, v13, v5, v6, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v18

    .line 1594
    .local v18, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_17a
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_1bb

    .line 1595
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1596
    .local v19, "rsi":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28c

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a5
    .catch Landroid/os/RemoteException; {:try_start_140 .. :try_end_1a5} :catch_fc

    move-result v4

    if-eqz v4, :cond_28c

    .line 1599
    :try_start_1a8
    new-instance v22, Landroid/app/WallpaperInfo;

    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v4}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_1bb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a8 .. :try_end_1bb} :catch_26a
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1bb} :catch_27b
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1bb} :catch_fc

    .line 1616
    .end local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_1bb
    if-nez v22, :cond_2f2

    .line 1617
    :try_start_1bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Safe mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service is not a wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1619
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageMangerquery count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1620
    const/4 v12, 0x0

    :goto_21b
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_290

    .line 1621
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    .line 1622
    .restart local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceInfo package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1620
    add-int/lit8 v12, v12, 0x1

    goto :goto_21b

    .line 1600
    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    :catch_26a
    move-exception v11

    .line 1601
    .local v11, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_273

    .line 1602
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1604
    :cond_273
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1605
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1606
    .end local v11    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_27b
    move-exception v11

    .line 1607
    .local v11, "e":Ljava/io/IOException;
    if-eqz p3, :cond_284

    .line 1608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1610
    :cond_284
    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1611
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1594
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_28c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_17a

    .line 1625
    .end local v19    # "rsi":Landroid/content/pm/ServiceInfo;
    :cond_290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current ServiceInfo name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, writeResetLog(Ljava/lang/String;Z)V

    .line 1626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current ServiceInfo package name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected service is not a wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1629
    .restart local v16    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_2e8

    .line 1630
    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1632
    :cond_2e8
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1638
    .end local v12    # "i":I
    .end local v16    # "msg":Ljava/lang/String;
    .end local v18    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2f2
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Binding to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const/4 v15, 0x1

    .line 1645
    .local v15, "maxDisplay":I
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxDisplay"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const/4 v10, 0x0

    .local v10, "displayId":I
    :goto_327
    if-ge v10, v15, :cond_44b

    .line 1656
    new-instance v17, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1657
    .local v17, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1658
    const-string v4, "android.intent.extra.client_label"

    const v5, 0x1040442

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1660
    const-string v23, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, mContext:Landroid/content/Context;

    const v8, 0x1040443

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v13, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1665
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const v5, 0x22000001

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v13, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_3cb

    .line 1668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1670
    .restart local v16    # "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, writeResetLog(Ljava/lang/String;)V

    .line 1671
    if-eqz p3, :cond_3c1

    .line 1672
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1674
    :cond_3c1
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1681
    .end local v16    # "msg":Ljava/lang/String;
    :cond_3cb
    move-object/from16 v0, p0

    iget-object v14, v0, mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1683
    .local v14, "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v5, v0, mCurrentUserId:I

    if-ne v4, v5, :cond_3e0

    if-eqz v14, :cond_3e0

    .line 1684
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1686
    :cond_3e0
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1687
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1688
    move-object/from16 v0, p5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1689
    move-object/from16 v0, p4

    iput v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->displayId:I
    :try_end_3f6
    .catch Landroid/os/RemoteException; {:try_start_1bd .. :try_end_3f6} :catch_fc

    .line 1691
    :try_start_3f6
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v5, v0, mCurrentUserId:I

    if-ne v4, v5, :cond_43d

    .line 1693
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding window token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[uid]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    move-object/from16 v0, p0

    iget-object v4, v0, mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v6, 0x7dd

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1707
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_43d
    .catch Landroid/os/RemoteException; {:try_start_3f6 .. :try_end_43d} :catch_44e

    .line 1646
    :cond_43d
    :goto_43d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_327

    .line 1719
    .end local v10    # "displayId":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v15    # "maxDisplay":I
    .end local v17    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v20    # "serviceUserId":I
    .end local v21    # "si":Landroid/content/pm/ServiceInfo;
    .end local v22    # "wi":Landroid/app/WallpaperInfo;
    .local v11, "e":Landroid/os/RemoteException;
    .restart local v16    # "msg":Ljava/lang/String;
    :cond_441
    const-string v4, "WallpaperManagerService"

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    const/4 v4, 0x0

    goto/16 :goto_39

    .line 1722
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v16    # "msg":Ljava/lang/String;
    .restart local v10    # "displayId":I
    .restart local v13    # "intent":Landroid/content/Intent;
    .restart local v15    # "maxDisplay":I
    .restart local v20    # "serviceUserId":I
    .restart local v21    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v22    # "wi":Landroid/app/WallpaperInfo;
    :cond_44b
    const/4 v4, 0x1

    goto/16 :goto_39

    .line 1710
    .restart local v14    # "lastWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v17    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :catch_44e
    move-exception v4

    goto :goto_43d
.end method

.method public checkWallpaperForMultiSimSkip()Z
    .registers 6

    .prologue
    .line 2157
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2158
    .local v0, "mProductName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2160
    .local v1, "multiSIM_skip":Z
    const-string/jumbo v2, "trlteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "klteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2161
    :cond_1a
    const/4 v1, 0x1

    .line 2164
    :cond_1b
    iget v2, p0, mCurrentUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_22

    .line 2165
    const/4 v1, 0x1

    .line 2168
    :cond_22
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWallpaperForMultiSimSkip "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    return v1
.end method

.method public clearWallpaper(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, p1}, isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 936
    :goto_12
    return-void

    .line 932
    :cond_13
    const-string v0, "clearWallpaper"

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 934
    const/4 v0, 0x0

    :try_start_1c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 935
    monitor-exit v1

    goto :goto_12

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_26

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1754
    const-string v0, "WallpaperManagerService"

    const-string v1, "clearWallpaperComponentLocked "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1756
    invoke-virtual {p0, p1}, detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1757
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .registers 16
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 939
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearWallpaperLocked =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v0, "clearWallpaperLocked"

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 941
    iget-object v0, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 942
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_29

    .line 982
    :goto_28
    return-void

    .line 945
    :cond_29
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 946
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 947
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v2, "remove wallpaper file"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const-string/jumbo v0, "remove wallpaper file"

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 951
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 953
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 955
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_52
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 956
    iget v0, p0, mCurrentUserId:I
    :try_end_56
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_56} :catch_6e
    .catchall {:try_start_52 .. :try_end_56} :catchall_89

    if-eq p2, v0, :cond_5c

    .line 980
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    .line 957
    :cond_5c
    if-eqz p1, :cond_60

    :try_start_5e
    iget-object v1, p0, mImageWallpaper:Landroid/content/ComponentName;

    :cond_60
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_67} :catch_6e
    .catchall {:try_start_5e .. :try_end_67} :catchall_89

    move-result v0

    if-eqz v0, :cond_70

    .line 980
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    .line 962
    :catch_6e
    move-exception v7

    .line 963
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .line 970
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_70
    :try_start_70
    const-string v0, "Default wallpaper component not found"

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 971
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    invoke-virtual {p0, v4}, clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_89

    .line 973
    if-eqz p3, :cond_85

    .line 975
    const/4 v0, 0x0

    :try_start_82
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_85} :catch_8e
    .catchall {:try_start_82 .. :try_end_85} :catchall_89

    .line 980
    :cond_85
    :goto_85
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_28

    :catchall_89
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 976
    :catch_8e
    move-exception v0

    goto :goto_85
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v3, 0x0

    .line 1726
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_5a

    .line 1727
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 1729
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_5f

    .line 1732
    :goto_13
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1734
    :cond_17
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_24

    .line 1736
    :try_start_1d
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_5d

    .line 1740
    :cond_24
    :goto_24
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1743
    :try_start_2b
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    iget-object v0, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_50} :catch_5b

    .line 1747
    :goto_50
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1748
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1749
    iput-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1751
    :cond_5a
    return-void

    .line 1745
    :catch_5b
    move-exception v0

    goto :goto_50

    .line 1737
    :catch_5d
    move-exception v0

    goto :goto_24

    .line 1730
    :catch_5f
    move-exception v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2351
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 2354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    :goto_32
    return-void

    .line 2360
    :cond_33
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2361
    :try_start_36
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v3, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_f2

    .line 2363
    iget-object v3, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2364
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2366
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2367
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 2369
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2370
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2372
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_ee

    .line 2373
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2374
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2376
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_c1

    .line 2378
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2379
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2381
    :cond_c1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2383
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2384
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2385
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2386
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2387
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2388
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 2362
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 2391
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_f2
    monitor-exit v4

    goto/16 :goto_32

    .end local v1    # "i":I
    :catchall_f5
    move-exception v3

    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_36 .. :try_end_f7} :catchall_f5

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 751
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 753
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 754
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 756
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1c
    return-void
.end method

.method public getCurrSimID()I
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2199
    const/4 v2, 0x0

    .line 2201
    .local v2, "currSimId":I
    const-string/jumbo v0, "ril.ICC_TYPE"

    .line 2202
    .local v0, "SP_KEY_SIM_STATE_SIM":Ljava/lang/String;
    const-string v1, "0"

    .line 2203
    .local v1, "SP_VALUE_SIM_STATE_ABSENT":Ljava/lang/String;
    const-string/jumbo v11, "ril.ICC_TYPE"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2204
    .local v8, "simStateString":Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2206
    .local v7, "simState":[Ljava/lang/String;
    if-eqz v7, :cond_1f

    if-eqz v7, :cond_21

    array-length v11, v7

    const/4 v12, 0x2

    if-ge v11, v12, :cond_21

    :cond_1f
    move v3, v2

    .line 2242
    .end local v2    # "currSimId":I
    .local v3, "currSimId":I
    :goto_20
    return v3

    .line 2210
    .end local v3    # "currSimId":I
    .restart local v2    # "currSimId":I
    :cond_21
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone1_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_6b

    move v4, v9

    .line 2211
    .local v4, "sim1Enabled":Z
    :goto_31
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone2_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_6d

    move v5, v9

    .line 2213
    .local v5, "sim2Enabled":Z
    :goto_41
    const-string/jumbo v11, "ril.MSIMM"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2214
    .local v6, "simSlot":Ljava/lang/String;
    const-string v11, "0"

    aget-object v12, v7, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9a

    if-eqz v4, :cond_9a

    const-string v11, "0"

    aget-object v12, v7, v9

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9a

    if-eqz v5, :cond_9a

    .line 2216
    const-string v9, "1"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 2217
    const/4 v2, 0x1

    :goto_69
    move v3, v2

    .line 2242
    .end local v2    # "currSimId":I
    .restart local v3    # "currSimId":I
    goto :goto_20

    .end local v3    # "currSimId":I
    .end local v4    # "sim1Enabled":Z
    .end local v5    # "sim2Enabled":Z
    .end local v6    # "simSlot":Ljava/lang/String;
    .restart local v2    # "currSimId":I
    :cond_6b
    move v4, v10

    .line 2210
    goto :goto_31

    .restart local v4    # "sim1Enabled":Z
    :cond_6d
    move v5, v10

    .line 2211
    goto :goto_41

    .line 2219
    .restart local v5    # "sim2Enabled":Z
    .restart local v6    # "simSlot":Ljava/lang/String;
    :cond_6f
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2220
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubscriptionManager.getSlotId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 2222
    :cond_9a
    const-string v11, "0"

    aget-object v10, v7, v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_c9

    const-string v10, "0"

    aget-object v11, v7, v9

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_c9

    .line 2224
    const/4 v2, 0x0

    .line 2225
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCurrSimID no sim  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 2227
    :cond_c9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_105

    .line 2228
    const-string v10, "1"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_fd

    .line 2229
    const/4 v2, 0x1

    .line 2240
    :goto_d8
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCurrSimID single sim inserted  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 2231
    :cond_fd
    if-nez v4, :cond_103

    if-eqz v5, :cond_103

    .line 2232
    const/4 v2, 0x1

    goto :goto_d8

    .line 2234
    :cond_103
    const/4 v2, 0x0

    goto :goto_d8

    .line 2237
    :cond_105
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2238
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubscriptionManager.getSlotId 2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8
.end method

.method public getHeightHint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1099
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1100
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_11

    .line 1101
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    .line 1103
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 1105
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 861
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 862
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_11
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_14
    iget-object v0, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 866
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 2407
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 2408
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 1144
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1145
    :try_start_4
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    .line 1150
    .local v0, "SimStatusFlag":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1151
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 1152
    .local v7, "wallpaperUserId":I
    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_b0

    .line 1153
    iget v10, p0, mCurrentUserId:I

    const/16 v11, 0x64

    if-lt v10, v11, :cond_ac

    .line 1154
    const/4 v7, 0x0

    .line 1160
    :goto_18
    iget-boolean v10, p0, mBackupRunning:Z

    if-eqz v10, :cond_1d

    .line 1161
    const/4 v7, 0x0

    .line 1163
    :cond_1d
    invoke-virtual {p0, v7}, getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_be

    move-result-object v6

    .line 1165
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_33

    .line 1166
    :try_start_23
    const-string/jumbo v10, "width"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1167
    const-string/jumbo v10, "height"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    :cond_33
    const-string v4, ""

    .line 1171
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, ""

    .line 1172
    .local v5, "nFile":Ljava/lang/String;
    if-eqz v0, :cond_3f

    .line 1173
    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1175
    :cond_3f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1177
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1178
    new-instance v3, Ljava/io/File;

    invoke-static {v7}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1179
    .local v3, "f":Ljava/io/File;
    const-string v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getWallpaper filename:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_b6

    .line 1181
    const-string v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WallpaperManagerService  SimStatusFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WALLPAPER_FILE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not existed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_aa} :catch_c1
    .catchall {:try_start_23 .. :try_end_aa} :catchall_be

    .line 1182
    :try_start_aa
    monitor-exit v9

    .line 1190
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_ab
    return-object v8

    .line 1156
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_ac
    iget v7, p0, mCurrentUserId:I

    goto/16 :goto_18

    .line 1158
    :cond_b0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_be

    move-result v7

    goto/16 :goto_18

    .line 1184
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_b6
    const/high16 v10, 0x10000000

    :try_start_b8
    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_bb
    .catch Ljava/io/FileNotFoundException; {:try_start_b8 .. :try_end_bb} :catch_c1
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_be

    move-result-object v8

    :try_start_bc
    monitor-exit v9

    goto :goto_ab

    .line 1191
    .end local v0    # "SimStatusFlag":I
    .end local v1    # "callingUid":I
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "wallpaperUserId":I
    :catchall_be
    move-exception v8

    monitor-exit v9
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_be

    throw v8

    .line 1185
    .restart local v0    # "SimStatusFlag":I
    .restart local v1    # "callingUid":I
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v7    # "wallpaperUserId":I
    :catch_c1
    move-exception v2

    .line 1187
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_c2
    const-string v10, "WallpaperManagerService"

    const-string v11, "Error getting wallpaper"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1188
    const-string v10, "Error getting wallpaper"

    invoke-virtual {p0, v10}, writeResetLog(Ljava/lang/String;)V

    .line 1190
    monitor-exit v9
    :try_end_cf
    .catchall {:try_start_c2 .. :try_end_cf} :catchall_be

    goto :goto_ab
.end method

.method public getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1195
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWallpaperData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1197
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_38

    const/16 v1, 0x64

    if-ge p1, v1, :cond_38

    .line 1198
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1199
    .restart local v0    # "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "getWallpaperData : fallback to OWNER"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_38
    return-object v0
.end method

.method public getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v7, 0x0

    .line 1208
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1211
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1212
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 1213
    .local v6, "wallpaperUserId":I
    const/16 v9, 0x3e8

    if-ne v0, v9, :cond_28

    .line 1214
    iget v9, p0, mCurrentUserId:I

    const/16 v10, 0x64

    if-lt v9, v10, :cond_25

    .line 1215
    const/4 v6, 0x0

    .line 1221
    :goto_14
    iget-boolean v9, p0, mBackupRunning:Z

    if-eqz v9, :cond_19

    .line 1222
    const/4 v6, 0x0

    .line 1224
    :cond_19
    iget-object v9, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1225
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_2d

    .line 1226
    monitor-exit v8

    .line 1256
    :goto_24
    return-object v7

    .line 1217
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_25
    iget v6, p0, mCurrentUserId:I

    goto :goto_14

    .line 1219
    :cond_28
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_c5

    move-result v6

    goto :goto_14

    .line 1229
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_2d
    if-eqz p2, :cond_3f

    .line 1230
    :try_start_2f
    const-string/jumbo v9, "width"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    const-string/jumbo v9, "height"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1234
    :cond_3f
    const-string v3, ""

    .line 1235
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 1236
    .local v4, "nFile":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_4c

    .line 1237
    add-int/lit8 v9, p3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1239
    :cond_4c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaper"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1241
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback register : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1243
    new-instance v2, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1245
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_c8

    .line 1246
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WallpaperManagerService WALLPAPER_FILE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WallpaperManagerService WALLPAPER_FILE: is not exist  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, writeResetLog(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_c2} :catch_d1
    .catchall {:try_start_2f .. :try_end_c2} :catchall_c5

    .line 1248
    :try_start_c2
    monitor-exit v8

    goto/16 :goto_24

    .line 1257
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "wallpaperUserId":I
    :catchall_c5
    move-exception v7

    monitor-exit v8
    :try_end_c7
    .catchall {:try_start_c2 .. :try_end_c7} :catchall_c5

    throw v7

    .line 1250
    .restart local v0    # "callingUid":I
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "nFile":Ljava/lang/String;
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "wallpaperUserId":I
    :cond_c8
    const/high16 v9, 0x10000000

    :try_start_ca
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_ca .. :try_end_cd} :catch_d1
    .catchall {:try_start_ca .. :try_end_cd} :catchall_c5

    move-result-object v7

    :try_start_ce
    monitor-exit v8

    goto/16 :goto_24

    .line 1251
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :catch_d1
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v9, "WallpaperManagerService"

    const-string v10, "Error getting wallpaper"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    const-string v9, "Error getting wallpaper for multi sim"

    invoke-virtual {p0, v9}, writeResetLog(Ljava/lang/String;)V

    .line 1256
    monitor-exit v8
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_c5

    goto/16 :goto_24
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    .prologue
    .line 1262
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1263
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_13

    .line 1264
    iget v2, p0, mCurrentUserId:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_13

    .line 1265
    const/4 v0, 0x0

    .line 1269
    :cond_13
    iget-boolean v2, p0, mBackupRunning:Z

    if-eqz v2, :cond_18

    .line 1270
    const/4 v0, 0x0

    .line 1272
    :cond_18
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1273
    :try_start_1b
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1274
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2f

    .line 1275
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 1277
    :goto_2e
    return-object v2

    :cond_2f
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_2e

    .line 1278
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_32

    throw v2
.end method

.method public getWidthHint()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1087
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1088
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v1}, getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 1089
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_11

    .line 1090
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    .line 1092
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 1094
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1012
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5c

    move-result-wide v2

    .line 1014
    .local v2, "ident":J
    :try_start_7
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_57

    move-result-object v4

    .line 1016
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1018
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1020
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 1023
    iget-object v6, p0, mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1024
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_4a

    .line 1026
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, loadSettingsLocked(I)V

    .line 1027
    iget-object v6, p0, mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1029
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_4a
    if-eqz v5, :cond_1d

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1030
    const/4 v6, 0x1

    monitor-exit v7

    .line 1034
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_56
    return v6

    .line 1016
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_57
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1033
    .end local v2    # "ident":J
    :catchall_5c
    move-exception v6

    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_16 .. :try_end_5e} :catchall_5c

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_5f
    :try_start_5f
    monitor-exit v7
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5c

    .line 1034
    const/4 v6, 0x0

    goto :goto_56
.end method

.method public initializeKnoxWallpaper(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2502
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeKnoxWallpaper userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2504
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2505
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2506
    return-void
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1811
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public loadKnoxWallpaperSettings(I)V
    .registers 7
    .param p1, "personaId"    # I

    .prologue
    .line 2473
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2474
    :try_start_3
    iput p1, p0, mCurrentUserId:I

    .line 2475
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2476
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_1c

    .line 2477
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 2478
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2479
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    .line 2482
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2c

    .line 2483
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2484
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 2487
    :cond_2c
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " postponing showing wallpaper for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    monitor-exit v2

    .line 2489
    return-void

    .line 2488
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method onRemoveUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 884
    const/4 v2, 0x1

    if-ge p1, v2, :cond_4

    .line 893
    :goto_3
    return-void

    .line 885
    :cond_4
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 886
    :try_start_7
    invoke-virtual {p0, p1}, onStoppingUser(I)V

    .line 887
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "wallpaper"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 888
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 889
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "wallpaper_info.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 890
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRemoveUser:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, writeResetLog(Ljava/lang/String;)V

    .line 892
    monitor-exit v3

    goto :goto_3

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v2
.end method

.method onStoppingUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 870
    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    .line 881
    :goto_3
    return-void

    .line 871
    :cond_4
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 872
    :try_start_7
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 873
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    .line 874
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1d

    .line 875
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 876
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 878
    :cond_1d
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 880
    :cond_22
    monitor-exit v2

    goto :goto_3

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 24
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 2073
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_27b

    const-string/jumbo v18, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27b

    .line 2074
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 2076
    .local v15, "resName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 2077
    .local v11, "pkg":Ljava/lang/String;
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 2078
    .local v6, "colon":I
    if-lez v6, :cond_48

    .line 2079
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2082
    :cond_48
    const/4 v10, 0x0

    .line 2083
    .local v10, "ident":Ljava/lang/String;
    const/16 v18, 0x2f

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    .line 2084
    .local v16, "slash":I
    if-lez v16, :cond_5b

    .line 2085
    add-int/lit8 v18, v16, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2088
    :cond_5b
    const/16 v17, 0x0

    .line 2089
    .local v17, "type":Ljava/lang/String;
    if-lez v6, :cond_75

    if-lez v16, :cond_75

    sub-int v18, v16, v6

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_75

    .line 2090
    add-int/lit8 v18, v6, 0x1

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 2093
    :cond_75
    if-eqz v11, :cond_1ab

    if-eqz v10, :cond_1ab

    if-eqz v17, :cond_1ab

    .line 2094
    const/4 v14, -0x1

    .line 2095
    .local v14, "resId":I
    const/4 v13, 0x0

    .line 2096
    .local v13, "res":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 2098
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_7e
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 2099
    .local v5, "c":Landroid/content/Context;
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 2100
    .local v12, "r":Landroid/content/res/Resources;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v15, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 2101
    if-nez v14, :cond_11d

    .line 2102
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ident="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, writeResetLog(Ljava/lang/String;)V
    :try_end_10a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_10a} :catch_2c1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7e .. :try_end_10a} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_10a} :catch_23b
    .catchall {:try_start_7e .. :try_end_10a} :catchall_269

    .line 2106
    const/16 v18, 0x0

    .line 2134
    if-eqz v13, :cond_111

    .line 2136
    :try_start_10e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_2a2

    .line 2139
    :cond_111
    :goto_111
    if-eqz v8, :cond_11c

    .line 2141
    :try_start_113
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_11c} :catch_2c4

    .line 2152
    .end local v5    # "c":Landroid/content/Context;
    .end local v6    # "colon":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "r":Landroid/content/res/Resources;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_11c
    :goto_11c
    return v18

    .line 2109
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_11d
    :try_start_11d
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    .line 2110
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_136

    .line 2111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 2113
    :cond_136
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_143
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11d .. :try_end_143} :catch_2c1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11d .. :try_end_143} :catch_1ea
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_143} :catch_23b
    .catchall {:try_start_11d .. :try_end_143} :catchall_269

    .line 2115
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    const v18, 0x8000

    :try_start_146
    move/from16 v0, v18

    new-array v4, v0, [B

    .line 2117
    .local v4, "buffer":[B
    :goto_14a
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "amt":I
    if-lez v3, :cond_1b9

    .line 2118
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_157
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_146 .. :try_end_157} :catch_158
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_146 .. :try_end_157} :catch_2ba
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_157} :catch_2b7
    .catchall {:try_start_146 .. :try_end_157} :catchall_2b4

    goto :goto_14a

    .line 2124
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    :catch_158
    move-exception v7

    move-object v8, v9

    .line 2125
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :goto_15a
    :try_start_15a
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Package name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "package name not found:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, writeResetLog(Ljava/lang/String;Z)V
    :try_end_19b
    .catchall {:try_start_15a .. :try_end_19b} :catchall_269

    .line 2134
    if-eqz v13, :cond_1a0

    .line 2136
    :try_start_19d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_2a8

    .line 2139
    :cond_1a0
    :goto_1a0
    if-eqz v8, :cond_1ab

    .line 2141
    :try_start_1a2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1ab} :catch_2be

    .line 2151
    .end local v6    # "colon":I
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_1ab
    :goto_1ab
    const-string/jumbo v18, "restore wallpaper failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, writeResetLog(Ljava/lang/String;)V

    .line 2152
    const/16 v18, 0x0

    goto/16 :goto_11c

    .line 2122
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :cond_1b9
    :try_start_1b9
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Restored wallpaper: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b9 .. :try_end_1d3} :catch_158
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b9 .. :try_end_1d3} :catch_2ba
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1d3} :catch_2b7
    .catchall {:try_start_1b9 .. :try_end_1d3} :catchall_2b4

    .line 2123
    const/16 v18, 0x1

    .line 2134
    if-eqz v13, :cond_1da

    .line 2136
    :try_start_1d7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_2a5

    .line 2139
    :cond_1da
    :goto_1da
    if-eqz v9, :cond_11c

    .line 2141
    :try_start_1dc
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1e5} :catch_1e7

    goto/16 :goto_11c

    .line 2144
    :catch_1e7
    move-exception v19

    goto/16 :goto_11c

    .line 2127
    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1ea
    move-exception v7

    .line 2128
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1eb
    :try_start_1eb
    const-string v18, "WallpaperManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Resource not found: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "resource not fount:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, writeResetLog(Ljava/lang/String;Z)V
    :try_end_226
    .catchall {:try_start_1eb .. :try_end_226} :catchall_269

    .line 2134
    if-eqz v13, :cond_22b

    .line 2136
    :try_start_228
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_22b
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_22b} :catch_2ab

    .line 2139
    :cond_22b
    :goto_22b
    if-eqz v8, :cond_1ab

    .line 2141
    :try_start_22d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_236} :catch_238

    goto/16 :goto_1ab

    .line 2144
    :catch_238
    move-exception v18

    goto/16 :goto_1ab

    .line 2130
    .end local v7    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_23b
    move-exception v7

    .line 2131
    .local v7, "e":Ljava/io/IOException;
    :goto_23c
    :try_start_23c
    const-string v18, "IOException while restoring wallpaper"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, writeResetLog(Ljava/lang/String;Z)V

    .line 2132
    const-string v18, "WallpaperManagerService"

    const-string v19, "IOException while restoring wallpaper "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_254
    .catchall {:try_start_23c .. :try_end_254} :catchall_269

    .line 2134
    if-eqz v13, :cond_259

    .line 2136
    :try_start_256
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_259
    .catch Ljava/io/IOException; {:try_start_256 .. :try_end_259} :catch_2ae

    .line 2139
    :cond_259
    :goto_259
    if-eqz v8, :cond_1ab

    .line 2141
    :try_start_25b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_264
    .catch Ljava/io/IOException; {:try_start_25b .. :try_end_264} :catch_266

    goto/16 :goto_1ab

    .line 2144
    :catch_266
    move-exception v18

    goto/16 :goto_1ab

    .line 2134
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_269
    move-exception v18

    :goto_26a
    if-eqz v13, :cond_26f

    .line 2136
    :try_start_26c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_26f
    .catch Ljava/io/IOException; {:try_start_26c .. :try_end_26f} :catch_2b0

    .line 2139
    :cond_26f
    :goto_26f
    if-eqz v8, :cond_27a

    .line 2141
    :try_start_271
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 2142
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 2143
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_27a
    .catch Ljava/io/IOException; {:try_start_271 .. :try_end_27a} :catch_2b2

    .line 2144
    :cond_27a
    :goto_27a
    throw v18

    .line 2149
    .end local v6    # "colon":I
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "ident":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "resId":I
    .end local v15    # "resName":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v17    # "type":Ljava/lang/String;
    :cond_27b
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "wallpaper.name error:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, writeResetLog(Ljava/lang/String;Z)V

    goto/16 :goto_1ab

    .line 2137
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v6    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "ident":Ljava/lang/String;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "r":Landroid/content/res/Resources;
    .restart local v13    # "res":Ljava/io/InputStream;
    .restart local v14    # "resId":I
    .restart local v15    # "resName":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v17    # "type":Ljava/lang/String;
    :catch_2a2
    move-exception v19

    goto/16 :goto_111

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "amt":I
    .restart local v4    # "buffer":[B
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_2a5
    move-exception v19

    goto/16 :goto_1da

    .end local v3    # "amt":I
    .end local v4    # "buffer":[B
    .end local v5    # "c":Landroid/content/Context;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_2a8
    move-exception v18

    goto/16 :goto_1a0

    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2ab
    move-exception v18

    goto/16 :goto_22b

    .local v7, "e":Ljava/io/IOException;
    :catch_2ae
    move-exception v18

    goto :goto_259

    .end local v7    # "e":Ljava/io/IOException;
    :catch_2b0
    move-exception v19

    goto :goto_26f

    .line 2144
    :catch_2b2
    move-exception v19

    goto :goto_27a

    .line 2134
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "r":Landroid/content/res/Resources;
    :catchall_2b4
    move-exception v18

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_26a

    .line 2130
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_2b7
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_23c

    .line 2127
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_2ba
    move-exception v7

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1eb

    .line 2144
    .end local v5    # "c":Landroid/content/Context;
    .end local v12    # "r":Landroid/content/res/Resources;
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2be
    move-exception v18

    goto/16 :goto_1ab

    .line 2124
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2c1
    move-exception v7

    goto/16 :goto_15a

    .line 2144
    .restart local v5    # "c":Landroid/content/Context;
    .restart local v12    # "r":Landroid/content/res/Resources;
    :catch_2c4
    move-exception v19

    goto/16 :goto_11c
.end method

.method public setDimensionHints(IILjava/lang/String;)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1047
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, checkPermission(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p0, p3}, isWallpaperSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1084
    :goto_b
    return-void

    .line 1051
    :cond_c
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1052
    :try_start_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1053
    .local v1, "userId":I
    invoke-direct {p0, v1}, getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 1054
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_1b

    if-gtz p2, :cond_27

    .line 1055
    :cond_1b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1083
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_24
    move-exception v3

    monitor-exit v4
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v3

    .line 1058
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_27
    :try_start_27
    invoke-direct {p0}, getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 1059
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1060
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1062
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_3f

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_60

    .line 1063
    :cond_3f
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1064
    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1065
    invoke-direct {p0, v2}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1066
    iget v3, p0, mCurrentUserId:I

    if-eq v3, v1, :cond_4c

    monitor-exit v4

    goto :goto_b

    .line 1067
    :cond_4c
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_60

    .line 1068
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_54
    .catchall {:try_start_27 .. :try_end_54} :catchall_24

    if-eqz v3, :cond_62

    .line 1070
    :try_start_56
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5d} :catch_6e
    .catchall {:try_start_56 .. :try_end_5d} :catchall_24

    .line 1074
    :goto_5d
    :try_start_5d
    invoke-direct {p0, v2}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1083
    :cond_60
    :goto_60
    monitor-exit v4

    goto :goto_b

    .line 1075
    :cond_62
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_60

    .line 1079
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_24

    goto :goto_60

    .line 1072
    :catch_6e
    move-exception v3

    goto :goto_5d
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V
    .registers 9
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1109
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, checkPermission(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p0, p2}, isWallpaperSupported(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 1140
    :goto_b
    return-void

    .line 1113
    :cond_c
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1114
    :try_start_f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1115
    .local v0, "userId":I
    invoke-direct {p0, v0}, getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 1116
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_27

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_27

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_27

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v2, :cond_44

    .line 1117
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1139
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_41

    throw v2

    .line 1120
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_44
    :try_start_44
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 1121
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1122
    invoke-direct {p0, v1}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1123
    iget v2, p0, mCurrentUserId:I

    if-eq v2, v0, :cond_5a

    monitor-exit v3

    goto :goto_b

    .line 1124
    :cond_5a
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_6e

    .line 1125
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_41

    if-eqz v2, :cond_70

    .line 1127
    :try_start_64
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_6b} :catch_7c
    .catchall {:try_start_64 .. :try_end_6b} :catchall_41

    .line 1130
    :goto_6b
    :try_start_6b
    invoke-direct {p0, v1}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1139
    :cond_6e
    :goto_6e
    monitor-exit v3

    goto :goto_b

    .line 1131
    :cond_70
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_6e

    .line 1135
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_7b
    .catchall {:try_start_6b .. :try_end_7b} :catchall_41

    goto :goto_6e

    .line 1128
    :catch_7c
    move-exception v2

    goto :goto_6b
.end method

.method public setSettingsSystemUiTransparency(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 182
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v0, p0, mCurrentPersonaId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_33

    iget v0, p0, mCurrentPersonaId:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_33

    .line 185
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    iget v2, p0, mCurrentPersonaId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 189
    :goto_32
    return-void

    .line 187
    :cond_33
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_32
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1334
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, checkPermission(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {p0, p2}, isWallpaperSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1336
    const/4 v2, 0x0

    .line 1353
    :goto_c
    return-object v2

    .line 1338
    :cond_d
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1339
    :try_start_10
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaper"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1341
    .local v3, "userId":I
    invoke-direct {p0, v3}, getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1342
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_3e

    move-result-wide v0

    .line 1344
    .local v0, "ident":J
    :try_start_24
    invoke-virtual {p0, p1, v4}, updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1345
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_35

    .line 1346
    const-string v5, "WallpaperManagerService"

    const-string/jumbo v7, "wallpaper.imageWallpaperPending = true"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1350
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, setSettingsSystemUiTransparency(I)V
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_41

    .line 1353
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    goto :goto_c

    .line 1355
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "userId":I
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3e
    move-exception v5

    monitor-exit v6
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_3e

    throw v5

    .line 1353
    .restart local v0    # "ident":J
    .restart local v3    # "userId":I
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_41
    move-exception v5

    :try_start_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_3e
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1502
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 1503
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1504
    :try_start_8
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperComponent name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1507
    .local v9, "userId":I
    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1508
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_42

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1510
    const-string v0, "WallpaperManagerService"

    const-string/jumbo v1, "setWallpaper not allowed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const-string/jumbo v0, "setWallpaperComponent is not allowed "

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 1512
    monitor-exit v10

    .line 1529
    :goto_41
    return-void

    .line 1515
    :cond_42
    invoke-virtual {p0, v9}, getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v4

    .line 1516
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_64

    .line 1517
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v9    # "userId":I
    :catchall_61
    move-exception v0

    monitor-exit v10
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_61

    throw v0

    .line 1519
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v9    # "userId":I
    :cond_64
    :try_start_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    move-result-wide v6

    .line 1521
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_69
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1522
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setSettingsSystemUiTransparency(I)V
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_7c

    .line 1526
    :try_start_77
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1528
    monitor-exit v10

    goto :goto_41

    .line 1526
    :catchall_7c
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_61
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-virtual {p0, p2}, isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1453
    invoke-virtual {p0, p1}, setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 1455
    :cond_9
    return-void
.end method

.method public setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 1399
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWallpaperForMultiSim  simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iput p2, p0, whichSimSetWallpaper:I

    .line 1402
    invoke-virtual {p0, p1}, setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 1361
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaperForSet"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1363
    .local v4, "userId":I
    iget-boolean v6, p0, mBackupRunning:Z

    if-eqz v6, :cond_12

    .line 1364
    const/4 v4, 0x0

    .line 1366
    :cond_12
    invoke-virtual {p0, v4}, getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v5

    .line 1369
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1370
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_2c

    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 1372
    const-string v6, "WallpaperManagerService"

    const-string/jumbo v7, "setWallpaper not allowed"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v2, 0x0

    .line 1392
    :goto_2b
    return-object v2

    .line 1377
    :cond_2c
    if-nez v5, :cond_47

    .line 1378
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wallpaper not yet initialized for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1380
    :cond_47
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, checkPermission(Ljava/lang/String;)V

    .line 1381
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1382
    :try_start_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_65

    move-result-wide v0

    .line 1384
    .local v0, "ident":J
    :try_start_53
    invoke-virtual {p0, p1, v5}, updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1385
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_5c

    .line 1386
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1389
    :cond_5c
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, setSettingsSystemUiTransparency(I)V
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_68

    .line 1392
    :try_start_60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    goto :goto_2b

    .line 1394
    .end local v0    # "ident":J
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_65
    move-exception v6

    monitor-exit v7
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_65

    throw v6

    .line 1392
    .restart local v0    # "ident":J
    :catchall_68
    move-exception v6

    :try_start_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_65
.end method

.method public settingsRestored()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2017
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1a

    .line 2020
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2024
    :cond_1a
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v5, 0x0

    .line 2026
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 2027
    .local v7, "success":Z
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2028
    const/4 v1, 0x0

    :try_start_28
    invoke-direct {p0, v1}, loadSettingsLocked(I)V

    .line 2029
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 2030
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_b2

    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 2032
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 2037
    const-string v1, "bind failed!! restore default wallpaper"

    invoke-virtual {p0, v1}, writeResetLog(Ljava/lang/String;)V

    .line 2038
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2040
    :cond_5d
    const/4 v7, 0x1

    .line 2058
    :cond_5e
    :goto_5e
    monitor-exit v8
    :try_end_5f
    .catchall {:try_start_28 .. :try_end_5f} :catchall_ef

    .line 2060
    if-nez v7, :cond_aa

    .line 2061
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to restore wallpaper: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, writeResetLog(Ljava/lang/String;)V

    .line 2063
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 2064
    invoke-static {v9}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2067
    :cond_aa
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2068
    :try_start_ad
    invoke-direct {p0, v5}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2069
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_ff

    .line 2070
    return-void

    .line 2044
    :cond_b2
    :try_start_b2
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 2045
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored: name is empty"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    const/4 v7, 0x1

    .line 2047
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setSettingsSystemUiTransparency(I)V

    .line 2052
    :goto_c9
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "settingsRestored: success="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    if-eqz v7, :cond_5e

    .line 2054
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto/16 :goto_5e

    .line 2058
    :catchall_ef
    move-exception v1

    monitor-exit v8
    :try_end_f1
    .catchall {:try_start_b2 .. :try_end_f1} :catchall_ef

    throw v1

    .line 2049
    :cond_f2
    :try_start_f2
    const-string v1, "WallpaperManagerService"

    const-string/jumbo v2, "settingsRestored: attempting to restore named resource"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-virtual {p0, v5}, restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_fd
    .catchall {:try_start_f2 .. :try_end_fd} :catchall_ef

    move-result v7

    goto :goto_c9

    .line 2069
    :catchall_ff
    move-exception v1

    :try_start_100
    monitor-exit v2
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw v1
.end method

.method public switchPersonaWallpaper(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "forced"    # Z

    .prologue
    .line 2493
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2495
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2496
    if-eqz p2, :cond_2e

    const/4 v1, 0x1

    :goto_26
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2497
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2498
    return-void

    .line 2496
    :cond_2e
    const/4 v1, 0x0

    goto :goto_26
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 896
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 897
    :try_start_3
    iput p1, p0, mCurrentUserId:I

    .line 898
    invoke-direct {p0, p1}, getWallpaperSafeLocked(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 900
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_19

    .line 901
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 902
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 904
    :cond_19
    invoke-virtual {p0, v0, p2}, switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 905
    monitor-exit v2

    .line 906
    return-void

    .line 905
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 909
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 910
    const/4 v6, 0x0

    .line 912
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 914
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_1a
    .catchall {:try_start_4 .. :try_end_12} :catchall_30

    move-result v0

    if-eqz v0, :cond_1c

    .line 915
    :try_start_15
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_30

    .line 924
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_16
    return-void

    .line 912
    :cond_17
    :try_start_17
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_19} :catch_1a
    .catchall {:try_start_17 .. :try_end_19} :catchall_30

    goto :goto_a

    .line 917
    :catch_1a
    move-exception v7

    .line 918
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 920
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1c
    :try_start_1c
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const-string v0, "Failure starting previous wallpaper"

    invoke-virtual {p0, v0}, writeResetLog(Ljava/lang/String;)V

    .line 922
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 923
    monitor-exit v8

    goto :goto_16

    :catchall_30
    move-exception v0

    monitor-exit v8
    :try_end_32
    .catchall {:try_start_1c .. :try_end_32} :catchall_30

    throw v0
.end method

.method public systemRunning()V
    .registers 7

    .prologue
    .line 759
    const-string v4, "WallpaperManagerService"

    const-string/jumbo v5, "systemReady"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v4, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 761
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 762
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 763
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 764
    invoke-direct {p0}, registerSimChangedReceiver()V

    .line 765
    invoke-direct {p0}, registerBackupRestoreReceiver()V

    .line 766
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    :try_start_40
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 790
    .local v1, "mPersona":Landroid/os/PersonaManager;
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/PersonaManager;)V

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_53} :catch_60

    .line 836
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :goto_53
    :try_start_53
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5f} :catch_65

    .line 856
    :goto_5f
    return-void

    .line 830
    :catch_60
    move-exception v0

    .line 831
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_53

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_65
    move-exception v0

    .line 854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5f
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v7, 0x0

    .line 1407
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    .line 1408
    .local v0, "SimStatusFlag":I
    if-nez p1, :cond_9

    const-string p1, ""

    .line 1411
    :cond_9
    :try_start_9
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v8}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1412
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_23

    .line 1413
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1414
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1421
    :cond_23
    const/4 v4, 0x0

    .line 1422
    .local v4, "file":Ljava/io/File;
    const-string v6, ""

    .line 1423
    .local v6, "nFile":Ljava/lang/String;
    const-string v5, ""

    .line 1426
    .local v5, "fileName":Ljava/lang/String;
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_2f

    .line 1427
    const/4 v0, 0x0

    .line 1430
    :cond_2f
    if-eqz v0, :cond_37

    .line 1431
    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1432
    :cond_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1433
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1436
    .restart local v4    # "file":Ljava/io/File;
    const/high16 v8, 0x3c000000    # 0.0078125f

    invoke-static {v4, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1438
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_63

    .line 1439
    const-string v8, "!SELinux.restorecon "

    invoke-virtual {p0, v8}, writeResetLog(Ljava/lang/String;)V

    move-object v3, v7

    .line 1448
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :goto_62
    return-object v3

    .line 1442
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "nFile":Ljava/lang/String;
    :cond_63
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_65} :catch_66

    goto :goto_62

    .line 1444
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :catch_66
    move-exception v2

    .line 1445
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "WallpaperManagerService"

    const-string v9, "Error setting wallpaper"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1446
    const-string/jumbo v8, "updateWallpaperBitmapLocked  Error setting wallpaper "

    invoke-virtual {p0, v8}, writeResetLog(Ljava/lang/String;)V

    move-object v3, v7

    .line 1448
    goto :goto_62
.end method

.method updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v6, 0x0

    .line 1460
    if-nez p1, :cond_5

    const-string p1, ""

    .line 1462
    :cond_5
    :try_start_5
    iget v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v7}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1463
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 1464
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1465
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f9

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1470
    :cond_1f
    const/4 v3, 0x0

    .line 1471
    .local v3, "file":Ljava/io/File;
    const-string v5, ""

    .line 1472
    .local v5, "nFile":Ljava/lang/String;
    const-string v4, ""

    .line 1473
    .local v4, "fileName":Ljava/lang/String;
    iget v7, p0, whichSimSetWallpaper:I

    if-eqz v7, :cond_30

    .line 1474
    iget v7, p0, whichSimSetWallpaper:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1475
    :cond_30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wallpaper"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1476
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1478
    .restart local v3    # "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v8, 0x3c000000    # 0.0078125f

    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1480
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_57} :catch_64

    move-result v7

    if-nez v7, :cond_61

    .line 1482
    if-eqz v2, :cond_5f

    .line 1483
    :try_start_5c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_74
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_5f} :catch_64

    :cond_5f
    :goto_5f
    move-object v2, v6

    .line 1497
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_60
    return-object v2

    .line 1490
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    :cond_61
    :try_start_61
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_63} :catch_64

    goto :goto_60

    .line 1493
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :catch_64
    move-exception v1

    .line 1494
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v7, "WallpaperManagerService"

    const-string v8, "Error setting wallpaper"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    const-string/jumbo v7, "updateWallpaperBitmapLockedForSet  Error setting wallpaper "

    invoke-virtual {p0, v7}, writeResetLog(Ljava/lang/String;)V

    move-object v2, v6

    .line 1497
    goto :goto_60

    .line 1485
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    :catch_74
    move-exception v7

    goto :goto_5f
.end method

.method public writeResetLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 985
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, writeResetLog(Ljava/lang/String;Z)V

    .line 986
    return-void
.end method

.method public writeResetLog(Ljava/lang/String;Z)V
    .registers 13
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "flush"    # Z

    .prologue
    .line 989
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v6, "/data/log/wallpaper_log.txt"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 990
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    .line 991
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 993
    :cond_10
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 994
    .local v4, "out":Ljava/io/FileOutputStream;
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v5, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 995
    .local v5, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 996
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "dateString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1000
    if-eqz p2, :cond_52

    .line 1001
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1002
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    .line 1007
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_52
    :goto_52
    return-void

    .line 1004
    :catch_53
    move-exception v1

    .line 1005
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "WallpaperManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " writeResetLogException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method
