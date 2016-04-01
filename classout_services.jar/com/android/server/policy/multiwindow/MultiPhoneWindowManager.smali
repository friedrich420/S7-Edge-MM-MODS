.class public Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final DEBUG_ALWAYS_ON:Z = false

.field private static final MULTIWINDOW_SETTING_OFF:I = 0x0

.field private static final MULTIWINDOW_SETTING_ON:I = 0x1

.field static final SAFE_DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MultiPhoneWindowManager"


# instance fields
.field private mConsumeBackKeyUp:Z

.field mContext:Landroid/content/Context;

.field private mEnableMultiWindowUISetting:I

.field private mFirstMultiWindowSettingOn:Z

.field private mFirstRecentKeyClick:Z

.field private mFloatingPadding:Landroid/graphics/Rect;

.field private mFloatingPaddingTemp:Landroid/graphics/Rect;

.field private mForceHideCascade:Z

.field private mForceHideCenterBar:Z

.field private mForceHidePenWindowController:Z

.field private mForceHidePenWindowControllerStackId:I

.field private mForceHideStatusBar:Z

.field mHandler:Landroid/os/Handler;

.field private mIsMultiWindowTrayOpen:Z

.field private mIsRecentUI:Z

.field private mIsTrayBarUI:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mLock:Ljava/lang/Object;

.field private mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMinimizeSize:I

.field private mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private mMultiWindowUIIntent:Landroid/content/Intent;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private mScaleWindowResizableSize:I

.field mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

.field private final mStatusBarController:Lcom/android/server/policy/BarController;

.field mStatusBarHeight:I

.field private mStatusBarTransient:Z

.field public mSystemBooted:Z

.field public mSystemReady:Z

.field private mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field private mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/high16 v2, 0x4000000

    const/4 v7, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 108
    iput v7, p0, mStatusBarHeight:I

    .line 114
    new-instance v0, Lcom/android/server/policy/BarController;

    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, mStatusBarController:Lcom/android/server/policy/BarController;

    .line 122
    iput-boolean v7, p0, mIsRecentUI:Z

    .line 123
    iput-boolean v7, p0, mIsTrayBarUI:Z

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFloatingPadding:Landroid/graphics/Rect;

    .line 126
    iput v7, p0, mMinimizeSize:I

    .line 127
    iput v7, p0, mScaleWindowResizableSize:I

    .line 128
    iput-object v8, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    .line 129
    iput-boolean v7, p0, mStatusBarTransient:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    .line 137
    iput-boolean v7, p0, mConsumeBackKeyUp:Z

    .line 138
    iput-boolean v7, p0, mFirstRecentKeyClick:Z

    .line 139
    iput-boolean v7, p0, mFirstMultiWindowSettingOn:Z

    .line 140
    iput-boolean v7, p0, mForceHideCascade:Z

    .line 145
    iput v7, p0, mEnableMultiWindowUISetting:I

    .line 147
    iput-boolean v7, p0, mIsMultiWindowTrayOpen:Z

    .line 148
    iput-boolean v7, p0, mForceHideCenterBar:Z

    .line 149
    iput-boolean v7, p0, mForceHideStatusBar:Z

    .line 150
    iput-boolean v7, p0, mForceHidePenWindowController:Z

    .line 151
    const/4 v0, -0x1

    iput v0, p0, mForceHidePenWindowControllerStackId:I

    .line 153
    iput-object v8, p0, mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    .line 159
    new-instance v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    iput-object v0, p0, mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 729
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    iget v0, p0, mEnableMultiWindowUISetting:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, mEnableMultiWindowUISetting:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    iget-boolean v0, p0, mIsRecentUI:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    iget-boolean v0, p0, mFirstMultiWindowSettingOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, mFirstMultiWindowSettingOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    invoke-direct {p0, p1}, getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 90
    iget-object v0, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method private applyMultiWindowScaleFrame(Landroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "pf"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    .line 800
    invoke-virtual {p0, p1}, getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    .line 801
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v0, v4, v5

    .line 802
    .local v0, "height":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int v3, v4, v5

    .line 803
    .local v3, "width":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->orientation:I

    .line 805
    .local v1, "orientation":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-ne v4, v6, :cond_26

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2e

    :cond_26
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getRequestedOrientation()I

    move-result v4

    if-nez v4, :cond_45

    if-ne v1, v6, :cond_45

    :cond_2e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    const/high16 v5, 0x400000

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 808
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 809
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->right:I

    .line 815
    :goto_44
    return-void

    .line 811
    :cond_45
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v0

    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    .line 812
    iget v4, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_44
.end method

.method private getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 13
    .param p1, "windowName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 1324
    :try_start_1
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1325
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1326
    .local v5, "parts":[Ljava/lang/String;
    array-length v7, v5

    const/4 v9, 0x2

    if-ge v7, v9, :cond_17

    move-object v1, v8

    .line 1344
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_16
    :goto_16
    return-object v1

    .line 1328
    .restart local v5    # "parts":[Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_17
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1329
    .local v3, "i":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1330
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1331
    .local v4, "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1332
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 1333
    .local v1, "appName":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3f

    .line 1334
    invoke-virtual {v0, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1336
    :cond_3f
    if-nez v1, :cond_16

    .line 1337
    const-string v1, ""
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_16

    .line 1340
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "parts":[Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_44
    move-exception v2

    .line 1341
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "MultiPhoneWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getApplicationName is error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    .line 1344
    goto :goto_16
.end method

.method private isDeviceProvisioned()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method private isIsolatedSplitUsed()Z
    .registers 5

    .prologue
    .line 674
    iget-object v2, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerPolicy$WindowState;

    .line 675
    .local v1, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    const/4 v2, 0x1

    .line 679
    .end local v1    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 684
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private keyguardIsShowingTq()Z
    .registers 2

    .prologue
    .line 715
    iget-object v0, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method private keyguardOn()Z
    .registers 2

    .prologue
    .line 708
    invoke-direct {p0}, keyguardIsShowingTq()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public applyPostLayoutPolicyForRecenUI(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1148
    iget-boolean v0, p0, mIsRecentUI:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x82f

    if-ne p1, v0, :cond_b

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, mForceHideStatusBar:Z

    .line 1152
    :cond_b
    return-void
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/high16 v5, 0x4000000

    const/4 v2, 0x1

    .line 455
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 456
    .local v1, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_15

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9c

    :cond_15
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-nez v3, :cond_9c

    move v0, v2

    .line 460
    .local v0, "isMultiWindowTarget":Z
    :goto_1c
    iget-object v3, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_26

    .line 461
    if-eqz v0, :cond_26

    .line 462
    iput-object p1, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 463
    iput-object v1, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 467
    :cond_26
    if-eqz v0, :cond_3e

    .line 468
    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 470
    :cond_3c
    iput-boolean v2, p0, mForceHideCenterBar:Z

    .line 481
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_6d

    .line 484
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_6d

    .line 485
    iget-object v3, p0, mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v3, :cond_6d

    .line 486
    iput-object p1, p0, mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    .line 491
    :cond_6d
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-eq v3, v4, :cond_7f

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7dc

    if-eq v3, v4, :cond_7f

    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8e8

    if-ne v3, v4, :cond_8d

    :cond_7f
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 492
    iput-boolean v2, p0, mForceHidePenWindowController:Z

    .line 493
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTargetAppTokenStackId()I

    move-result v3

    iput v3, p0, mForceHidePenWindowControllerStackId:I

    .line 496
    :cond_8d
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 497
    iput-boolean v2, p0, mStatusBarTransient:Z

    .line 500
    :cond_9b
    return-void

    .line 456
    .end local v0    # "isMultiWindowTarget":Z
    :cond_9c
    const/4 v0, 0x0

    goto/16 :goto_1c

    .line 471
    .restart local v0    # "isMultiWindowTarget":Z
    :cond_9f
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-ne v3, v2, :cond_b3

    .line 472
    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 473
    iput-boolean v2, p0, mForceHideCenterBar:Z

    .line 475
    :cond_ad
    iget-object v3, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 476
    :cond_b3
    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    if-nez v3, :cond_3e

    .line 477
    iget-object v3, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_3e
.end method

.method public beginPostLayoutPolicyLw()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 439
    iput-object v1, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 440
    iput-boolean v0, p0, mStatusBarTransient:Z

    .line 441
    iput-boolean v0, p0, mForceHideCenterBar:Z

    .line 442
    iput-boolean v0, p0, mForceHideStatusBar:Z

    .line 443
    iput-boolean v0, p0, mForceHidePenWindowController:Z

    .line 444
    iput-object v1, p0, mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    .line 445
    const/4 v0, -0x1

    iput v0, p0, mForceHidePenWindowControllerStackId:I

    .line 446
    iget-object v0, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 448
    return-void
.end method

.method public checkAddPermission(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 1117
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_6

    .line 1118
    const/4 v0, 0x0

    .line 1121
    :goto_5
    return v0

    :cond_6
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public closeMultiWindowTrayBar(Z)Z
    .registers 6
    .param p1, "forceClose"    # Z

    .prologue
    const/4 v0, 0x0

    .line 844
    iget-object v1, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_9

    iget-object v1, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_30

    .line 846
    :cond_9
    const-string v1, "MultiPhoneWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeMultiWindowTrayBar() failed -> mMultiWindowTrayBar ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/mMultiWindowEditMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_2f
    :goto_2f
    return v0

    .line 852
    :cond_30
    iget-object v1, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 856
    iget-boolean v1, p0, mIsMultiWindowTrayOpen:Z

    if-eqz v1, :cond_2f

    .line 857
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$4;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    if-eqz p1, :cond_4a

    .line 871
    iput-boolean v0, p0, mIsMultiWindowTrayOpen:Z

    .line 873
    :cond_4a
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1170
    return-void
.end method

.method public finishPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 11
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 512
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 513
    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_37

    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 514
    iget-object v6, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_21

    iget-object v6, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_37

    .line 515
    :cond_21
    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 516
    iget-object v6, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_37

    iget-object v6, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 517
    iget-object v6, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    .line 527
    :cond_37
    :goto_37
    const/4 v1, 0x0

    .line 528
    .local v1, "showCenterBar":Z
    if-eqz p1, :cond_78

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v6

    if-ne v6, v8, :cond_78

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-nez v6, :cond_78

    invoke-direct {p0}, isIsolatedSplitUsed()Z

    move-result v6

    if-nez v6, :cond_78

    iget-boolean v6, p0, mForceHideCenterBar:Z

    if-eqz v6, :cond_5c

    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_78

    iget v6, p0, mEnableMultiWindowUISetting:I

    if-ne v6, v8, :cond_78

    .line 536
    :cond_5c
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v3

    .line 537
    .local v3, "topFullAppZone":I
    iget-object v6, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_d6

    move v2, v5

    .line 540
    .local v2, "topAppZone":I
    :goto_69
    if-ne v3, v2, :cond_e1

    iget-object v6, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_e1

    iget-object v6, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isArrangedUpperSideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 543
    const/4 v1, 0x0

    .line 549
    .end local v2    # "topAppZone":I
    .end local v3    # "topFullAppZone":I
    :cond_78
    :goto_78
    if-eqz v1, :cond_f5

    .line 550
    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_e5

    iget v6, p0, mEnableMultiWindowUISetting:I

    if-ne v6, v8, :cond_e5

    .line 551
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$3;

    invoke-direct {v7, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$3;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    :cond_8c
    :goto_8c
    if-eqz p1, :cond_96

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_96

    .line 580
    iput-boolean v5, p0, mForceHideCascade:Z

    .line 582
    :cond_96
    if-eqz p1, :cond_a4

    .line 583
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a4

    .line 585
    iput-boolean v8, p0, mForceHideCascade:Z

    .line 588
    :cond_a4
    iget-object v5, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_aa
    :goto_aa
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ff

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManagerPolicy$WindowState;

    .line 589
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_aa

    .line 591
    iput-boolean v8, p0, mForceHideCascade:Z

    goto :goto_aa

    .line 522
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "showCenterBar":Z
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_c3
    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_37

    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-nez v6, :cond_37

    .line 523
    iget-object v6, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    goto/16 :goto_37

    .line 537
    .restart local v1    # "showCenterBar":Z
    .restart local v3    # "topFullAppZone":I
    :cond_d6
    iget-object v6, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    goto :goto_69

    .line 544
    .restart local v2    # "topAppZone":I
    :cond_e1
    if-eqz v2, :cond_78

    .line 545
    const/4 v1, 0x1

    goto :goto_78

    .line 570
    .end local v2    # "topAppZone":I
    .end local v3    # "topFullAppZone":I
    :cond_e5
    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_8c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 571
    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(ZZZ)Z

    goto :goto_8c

    .line 575
    :cond_f5
    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_8c

    .line 576
    iget-object v6, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6, v5, v8, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(ZZZ)Z

    goto :goto_8c

    .line 595
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_ff
    return-void
.end method

.method public forceHideCenterBar(Z)V
    .registers 2
    .param p1, "forceHide"    # Z

    .prologue
    .line 614
    iput-boolean p1, p0, mForceHideCenterBar:Z

    .line 615
    return-void
.end method

.method public getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v5, 0x0

    .line 746
    if-eqz p1, :cond_1e

    .line 747
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopFullWindowInSameTask()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v1

    .line 748
    .local v1, "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_1f

    move-object v4, v1

    .line 749
    .local v4, "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_a
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 750
    .local v0, "fl":I
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v3

    .line 751
    .local v3, "sysUiFl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 753
    .local v2, "multiWindowFl":I
    and-int/lit8 v6, v2, 0x8

    if-eqz v6, :cond_21

    .line 766
    .end local v0    # "fl":I
    .end local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v2    # "multiWindowFl":I
    .end local v3    # "sysUiFl":I
    .end local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1e
    :goto_1e
    return v5

    .restart local v1    # "mainWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_1f
    move-object v4, p1

    .line 748
    goto :goto_a

    .line 757
    .restart local v0    # "fl":I
    .restart local v2    # "multiWindowFl":I
    .restart local v3    # "sysUiFl":I
    .restart local v4    # "targetWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_21
    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_2a

    const/high16 v6, 0x4000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_32

    :cond_2a
    and-int/lit16 v6, v3, 0x100

    if-eqz v6, :cond_1e

    and-int/lit16 v6, v0, 0x400

    if-nez v6, :cond_1e

    .line 762
    :cond_32
    iget v5, p0, mStatusBarHeight:I

    goto :goto_1e
.end method

.method public getFloatingWindowPadding(Landroid/view/WindowManagerPolicy$WindowState;)Landroid/graphics/Rect;
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 735
    iget-object v0, p0, mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget-object v1, p0, mFloatingPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 736
    iget-object v0, p0, mFloatingPaddingTemp:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1}, getFloatingStatusBarHeight(Landroid/view/WindowManagerPolicy$WindowState;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 737
    iget-object v0, p0, mFloatingPaddingTemp:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;ILandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 9
    .param p1, "statusBar"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "lastSystemUiFlags"    # I
    .param p3, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1089
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1090
    const/4 v2, 0x4

    .line 1091
    .local v2, "visibility":I
    if-eqz p1, :cond_2f

    .line 1092
    const/4 v1, 0x0

    .line 1093
    .local v1, "topIsFullscreen":Z
    if-eqz p3, :cond_1e

    .line 1094
    :try_start_9
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1096
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_19

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1d

    :cond_19
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_34

    :cond_1d
    const/4 v1, 0x1

    .line 1100
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1e
    :goto_1e
    if-nez v1, :cond_2f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, mStatusBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v3}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1102
    const/4 v2, 0x0

    .line 1104
    .end local v1    # "topIsFullscreen":Z
    :cond_2f
    invoke-virtual {p0, v2}, notifySystemUiVisibility(I)V

    .line 1105
    monitor-exit v4

    return v2

    .line 1096
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "topIsFullscreen":Z
    :cond_34
    const/4 v1, 0x0

    goto :goto_1e

    .line 1106
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "topIsFullscreen":Z
    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_36

    throw v3
.end method

.method public getLongPressedMinimizeIcon()Landroid/view/WindowManagerPolicy$WindowState;
    .registers 2

    .prologue
    .line 782
    iget-object v0, p0, mLongPressedMinimizeIcon:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method public getMinimizeSize()I
    .registers 2

    .prologue
    .line 773
    iget v0, p0, mMinimizeSize:I

    return v0
.end method

.method public getScaleWindowResizableSize()I
    .registers 2

    .prologue
    .line 791
    iget v0, p0, mScaleWindowResizableSize:I

    return v0
.end method

.method public handleLongPressOnRecent()Z
    .registers 15

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    .line 1205
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8b

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v10

    if-nez v10, :cond_8b

    .line 1208
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v5

    .line 1209
    .local v5, "isDeviceProvisioned":Z
    new-instance v4, Landroid/util/MutableBoolean;

    invoke-direct {v4, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1210
    .local v4, "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    iget-object v10, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v10

    invoke-virtual {p0, v10, v4}, needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v7

    .line 1211
    .local v7, "needhideTrayBar":Z
    const/4 v2, 0x0

    .line 1212
    .local v2, "extraIsNormal":Z
    iget v10, p0, mEnableMultiWindowUISetting:I

    if-eqz v10, :cond_36

    if-eqz v5, :cond_36

    invoke-direct {p0}, isUserSetupComplete()Z

    move-result v10

    if-eqz v10, :cond_36

    if-eqz v7, :cond_8c

    iget-boolean v10, v4, Landroid/util/MutableBoolean;->value:Z

    if-nez v10, :cond_8c

    .line 1216
    :cond_36
    const-string v6, "RecentsMultiWindow couldn\'t execute"

    .line 1217
    .local v6, "logStr":Ljava/lang/String;
    sget-boolean v10, SAFE_DEBUG:Z

    if-eqz v10, :cond_6d

    .line 1218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  isDeviceProvisioned : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  TopFullscreenOpaqueWindowState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  needHideTrayBar : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1225
    :cond_6d
    iget-object v10, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v10, v10, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-eqz v10, :cond_86

    .line 1226
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1227
    .local v3, "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$7;

    invoke-direct {v10, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$7;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1239
    .end local v3    # "handler":Landroid/os/Handler;
    :cond_86
    const-string v10, "MultiPhoneWindowManager"

    invoke-static {v10, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    .end local v2    # "extraIsNormal":Z
    .end local v4    # "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    .end local v5    # "isDeviceProvisioned":Z
    .end local v6    # "logStr":Ljava/lang/String;
    .end local v7    # "needhideTrayBar":Z
    :cond_8b
    :goto_8b
    return v9

    .line 1241
    .restart local v2    # "extraIsNormal":Z
    .restart local v4    # "hasDisableTrayFlag":Landroid/util/MutableBoolean;
    .restart local v5    # "isDeviceProvisioned":Z
    .restart local v7    # "needhideTrayBar":Z
    :cond_8c
    iget-object v10, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v10, :cond_a4

    iget-object v10, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v10, :cond_a4

    iget-object v10, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-nez v10, :cond_a4

    iget-object v10, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v10

    if-nez v10, :cond_aa

    :cond_a4
    if-eqz v7, :cond_da

    iget-boolean v10, v4, Landroid/util/MutableBoolean;->value:Z

    if-eqz v10, :cond_da

    .line 1244
    :cond_aa
    const/4 v8, 0x0

    .line 1246
    .local v8, "windowTitle":Ljava/lang/CharSequence;
    :try_start_ab
    iget-object v10, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v10}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_d5

    move-result-object v8

    .line 1250
    :goto_b5
    move-object v0, v8

    .line 1251
    .local v0, "appWindowTitle":Ljava/lang/CharSequence;
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1252
    .restart local v3    # "handler":Landroid/os/Handler;
    new-instance v10, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;

    invoke-direct {v10, p0, v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1269
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "LPNA"

    sget-object v12, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->NOT_SUPPORT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->name()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 1247
    .end local v0    # "appWindowTitle":Ljava/lang/CharSequence;
    .end local v3    # "handler":Landroid/os/Handler;
    :catch_d5
    move-exception v1

    .line 1248
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b5

    .line 1274
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v8    # "windowTitle":Ljava/lang/CharSequence;
    :cond_da
    iget-object v9, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_fb

    iget-object v9, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v9, :cond_fb

    iget-object v9, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v9

    if-eqz v9, :cond_fb

    iget-object v9, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v9

    if-eqz v9, :cond_fb

    iget-object v9, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v9, v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_fb

    .line 1278
    const/4 v2, 0x1

    .line 1280
    :cond_fb
    iget-object v9, p0, mContext:Landroid/content/Context;

    iget-object v10, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v10, "recentapps"

    invoke-static {v9, v10}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1281
    invoke-virtual {p0, v2}, startMultiWindowRecentsActivity(Z)V

    .line 1282
    const/4 v9, 0x1

    goto :goto_8b
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_5
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p4, "spwm"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p5, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 192
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 193
    iput-object p2, p0, mWindowManager:Landroid/view/IWindowManager;

    .line 194
    iput-object p3, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 195
    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iput-object v2, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 196
    iput-object p5, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    .line 197
    iput-object p4, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 199
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, mIsRecentUI:Z

    .line 200
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow.simplificationui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_75

    const/4 v2, 0x1

    :goto_31
    iput-boolean v2, p0, mIsTrayBarUI:Z

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    .line 204
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 205
    iget-object v2, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :goto_4b
    new-instance v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    .line 213
    iget-object v2, p0, mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->observe()V

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 220
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mStatusBarHeight:I

    .line 224
    return-void

    .line 200
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_75
    const/4 v2, 0x0

    goto :goto_31

    .line 208
    :cond_77
    iget-object v2, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FlashBarService"

    const-string v4, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4b
.end method

.method public interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I
    .registers 11
    .param p1, "down"    # Z
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z
    .param p4, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 292
    iget-object v3, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 325
    :cond_a
    :goto_a
    return v1

    .line 296
    :cond_b
    if-eqz p1, :cond_50

    .line 297
    iget v3, p0, mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_a

    .line 298
    const/4 v3, 0x7

    if-ne p2, v3, :cond_48

    if-nez p3, :cond_48

    iget-boolean v3, p0, mIsTrayBarUI:Z

    if-eqz v3, :cond_48

    .line 299
    invoke-virtual {p0, p4}, toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v3

    iput-boolean v3, p0, mConsumeBackKeyUp:Z

    .line 300
    const-string v3, "MultiPhoneWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiWindowTrayBar toggle / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, mConsumeBackKeyUp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-boolean v3, p0, mConsumeBackKeyUp:Z

    if-nez v3, :cond_46

    iget-object v3, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_46
    move v1, v2

    .line 303
    goto :goto_a

    .line 304
    :cond_48
    iget-boolean v3, p0, mConsumeBackKeyUp:Z

    if-eqz v3, :cond_a

    if-lez p2, :cond_a

    move v1, v2

    .line 305
    goto :goto_a

    .line 310
    :cond_50
    iget v3, p0, mEnableMultiWindowUISetting:I

    if-eqz v3, :cond_a

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_a

    .line 311
    iget-boolean v3, p0, mConsumeBackKeyUp:Z

    if-eqz v3, :cond_62

    .line 312
    iput-boolean v1, p0, mConsumeBackKeyUp:Z

    move v1, v2

    .line 313
    goto :goto_a

    .line 315
    :cond_62
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, closeMultiWindowTrayBar(Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.BACK_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v1, v2

    .line 319
    goto :goto_a
.end method

.method public isEnabledTalkback()Z
    .registers 9

    .prologue
    .line 1179
    const/16 v1, 0x3a

    .line 1180
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1181
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v6, 0x3a

    invoke-direct {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1183
    .local v5, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "enabled_accessibility_services"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1186
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_1c

    .line 1187
    const-string v4, ""

    .line 1190
    :cond_1c
    invoke-virtual {v5, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1192
    :cond_1f
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1193
    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "componentNameString":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1196
    .local v3, "enabledService":Landroid/content/ComponentName;
    if-eqz v3, :cond_1f

    .line 1197
    const-string v6, "com.google.android.marvin.talkback"

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1198
    const/4 v6, 0x1

    .line 1201
    .end local v2    # "componentNameString":Ljava/lang/String;
    .end local v3    # "enabledService":Landroid/content/ComponentName;
    :goto_3c
    return v6

    :cond_3d
    const/4 v6, 0x0

    goto :goto_3c
.end method

.method public isForceHideCascade()Z
    .registers 2

    .prologue
    .line 1370
    iget-boolean v0, p0, mForceHideCascade:Z

    return v0
.end method

.method public isForceHideStatusBar()Z
    .registers 2

    .prologue
    .line 241
    iget-boolean v0, p0, mForceHideStatusBar:Z

    return v0
.end method

.method public isSplitTopApplicationWindow()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 604
    iget-object v1, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v1, :cond_e

    iget-object v1, p0, mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isStatusBarTransient()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, mStatusBarTransient:Z

    return v0
.end method

.method public needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .registers 14
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "windowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p4, "attachedWin"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "attachAttrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p6, "attachedWindowStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1026
    if-eqz p2, :cond_1e

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v3, :cond_1e

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1e

    invoke-virtual {p3, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1d

    if-eqz p6, :cond_1e

    invoke-virtual {p6, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1071
    :cond_1d
    :goto_1d
    return v3

    .line 1034
    :cond_1e
    if-eqz p5, :cond_2c

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x898

    if-ne v5, v6, :cond_2c

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1040
    :cond_2c
    invoke-virtual {p3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_3a

    if-eqz p6, :cond_8e

    invoke-virtual {p6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_8e

    :cond_3a
    move v0, v3

    .line 1041
    .local v0, "isCascade":Z
    :goto_3b
    if-eqz v0, :cond_8c

    .line 1042
    iget-boolean v5, p0, mForceHideCascade:Z

    if-nez v5, :cond_1d

    .line 1046
    if-eqz p2, :cond_74

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ee

    if-eq v5, v6, :cond_4f

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3ef

    if-ne v5, v6, :cond_74

    .line 1048
    :cond_4f
    iget-boolean v5, p0, mForceHidePenWindowController:Z

    if-eqz v5, :cond_62

    if-eqz p2, :cond_62

    iget v5, p0, mForceHidePenWindowControllerStackId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_62

    iget v5, p0, mForceHidePenWindowControllerStackId:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v6

    if-eq v5, v6, :cond_1d

    .line 1054
    :cond_62
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTopPenWindowControllerInStack()Landroid/view/IApplicationToken;

    move-result-object v2

    .line 1055
    .local v2, "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    if-eqz v2, :cond_74

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    if-eq v2, v5, :cond_74

    .line 1056
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isTopPenWindowControllerVisibleInStack()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1062
    .end local v2    # "topPenWindowControllerToken":Landroid/view/IApplicationToken;
    :cond_74
    const/high16 v1, 0x80000

    .line 1063
    .local v1, "mask":I
    iget-object v5, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_8c

    if-eqz p2, :cond_85

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-nez v5, :cond_8c

    :cond_85
    if-eqz p5, :cond_1d

    iget v5, p5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_1d

    .end local v1    # "mask":I
    :cond_8c
    move v3, v4

    .line 1071
    goto :goto_1d

    .end local v0    # "isCascade":Z
    :cond_8e
    move v0, v4

    .line 1040
    goto :goto_3b
.end method

.method public needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z
    .registers 12
    .param p1, "topFullScreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "hasDisableTrayFlag"    # Landroid/util/MutableBoolean;

    .prologue
    const/4 v6, 0x1

    .line 920
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 921
    .local v4, "personaManager":Landroid/os/PersonaManager;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1004
    :cond_14
    :goto_14
    return v6

    .line 925
    :cond_15
    iget-object v7, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v7, :cond_21

    iget-object v7, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v7

    if-nez v7, :cond_14

    .line 929
    :cond_21
    iget-object v7, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_54

    .line 930
    iget-object v7, p0, mTopApplicationWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 931
    .local v2, "lpApp":Landroid/view/WindowManager$LayoutParams;
    move-object v3, v2

    .line 933
    .local v3, "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_36

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v7, v6, :cond_36

    .line 935
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 938
    :cond_36
    if-eqz v3, :cond_54

    .line 954
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_54

    .line 955
    iget-object v7, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_47

    .line 956
    if-eqz p2, :cond_14

    .line 957
    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_14

    .line 960
    :cond_47
    iget-object v7, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->hasChild()Z

    move-result v7

    if-nez v7, :cond_54

    .line 961
    if-eqz p2, :cond_14

    .line 962
    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_14

    .line 970
    .end local v2    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "lpTopFullApp":Landroid/view/WindowManager$LayoutParams;
    :cond_54
    iget-object v7, p0, mTopFullScreenOpaqueWindowStates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerPolicy$WindowState;

    .line 971
    .local v5, "win":Landroid/view/WindowManagerPolicy$WindowState;
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_75

    .line 972
    if-eqz p2, :cond_14

    .line 973
    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto :goto_14

    .line 977
    :cond_75
    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5a

    goto :goto_14

    .line 982
    .end local v5    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_82
    iget-object v7, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    if-eqz v7, :cond_a4

    .line 983
    iget-object v7, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEasyModeEnabled()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v7

    if-nez v7, :cond_14

    .line 991
    :cond_a4
    iget-object v7, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v7, :cond_bc

    .line 992
    iget-object v7, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 993
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v1, :cond_bc

    .line 994
    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_bc

    .line 995
    if-eqz p2, :cond_14

    .line 996
    iput-boolean v6, p2, Landroid/util/MutableBoolean;->value:Z

    goto/16 :goto_14

    .line 1004
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_bc
    const/4 v6, 0x0

    goto/16 :goto_14
.end method

.method public notifySystemUiVisibility(I)V
    .registers 4
    .param p1, "visibility"    # I

    .prologue
    .line 1011
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$6;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1018
    return-void
.end method

.method public onSystemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 702
    iput-object p1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 704
    return-void
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 647
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    packed-switch v0, :pswitch_data_1a

    .line 665
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 649
    :pswitch_7
    iput-object p1, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 652
    :pswitch_a
    iput-object p1, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 655
    :pswitch_d
    iget-object v0, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_13

    .line 656
    const/4 v0, -0x7

    goto :goto_6

    .line 658
    :cond_13
    iput-object p1, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 661
    :pswitch_16
    iput-object p1, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_5

    .line 647
    nop

    :pswitch_data_1a
    .packed-switch 0x898
        :pswitch_7
        :pswitch_d
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_8

    .line 623
    iput-object v1, p0, mMultiWindowTrayBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 632
    :cond_7
    :goto_7
    return-void

    .line 624
    :cond_8
    iget-object v0, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_f

    .line 625
    iput-object v1, p0, mMultiWindowEditMode:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 626
    :cond_f
    iget-object v0, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_16

    .line 627
    iput-object v1, p0, mMultiWindowCenterBar:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7

    .line 628
    :cond_16
    iget-object v0, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_7

    .line 629
    iput-object v1, p0, mMultiWindowGuide:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_7
.end method

.method public setInitialDisplaySize()V
    .registers 4

    .prologue
    .line 269
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 272
    iget-object v1, p0, mFloatingPadding:Landroid/graphics/Rect;

    const v2, 0x10502ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 274
    :cond_19
    const v1, 0x10502aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mMinimizeSize:I

    .line 275
    const v1, 0x10502bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mScaleWindowResizableSize:I

    .line 277
    return-void
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .registers 2
    .param p1, "open"    # Z

    .prologue
    .line 1079
    iput-boolean p1, p0, mIsMultiWindowTrayOpen:Z

    .line 1081
    return-void
.end method

.method public shouldEnableLayoutInsetsBySoftInput(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 8
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 1348
    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_c

    .line 1363
    :cond_b
    :goto_b
    return v2

    .line 1353
    :cond_c
    iget-object v3, p0, mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v3}, Landroid/view/WindowManagerInternal;->getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v0

    .line 1354
    .local v0, "inputMethodTarget":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_2d

    move-object v1, v0

    .line 1355
    .local v1, "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_15
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {p2}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v3

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 1363
    :cond_2b
    const/4 v2, 0x1

    goto :goto_b

    .end local v1    # "targetWindow":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2d
    move-object v1, p1

    .line 1354
    goto :goto_15
.end method

.method startMultiWindowRecentsActivity(Z)V
    .registers 4
    .param p1, "extra"    # Z

    .prologue
    .line 1289
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method

.method public stopDragDropService()V
    .registers 3

    .prologue
    .line 1159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.intent.action.ACTION_RECENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1163
    return-void
.end method

.method public toggleMultiWindowTray(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .registers 5
    .param p1, "topFullscreenOpaqueWindowState"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 821
    invoke-direct {p0}, isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 823
    :cond_15
    const-string v1, "MultiPhoneWindowManager"

    const-string v2, "MultiWindowTrayBar couldn\'t execute"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v1, 0x0

    .line 834
    :goto_1d
    return v1

    .line 830
    :cond_1e
    :try_start_1e
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_27

    .line 834
    :goto_25
    const/4 v1, 0x1

    goto :goto_1d

    .line 831
    :catch_27
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public toggleRecentApps()V
    .registers 4

    .prologue
    .line 1129
    iget v2, p0, mEnableMultiWindowUISetting:I

    if-eqz v2, :cond_25

    iget-boolean v2, p0, mFirstRecentKeyClick:Z

    if-nez v2, :cond_25

    iget-boolean v2, p0, mIsRecentUI:Z

    if-eqz v2, :cond_25

    iget-boolean v2, p0, mIsTrayBarUI:Z

    if-eqz v2, :cond_25

    .line 1131
    const/4 v2, 0x1

    iput-boolean v2, p0, mFirstRecentKeyClick:Z

    .line 1133
    :try_start_13
    iget-object v2, p0, mMultiWindowUIIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1134
    .local v1, "recentIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.multiwindow.recentkey.start"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_25} :catch_26

    .line 1141
    .end local v1    # "recentIntent":Landroid/content/Intent;
    :cond_25
    :goto_25
    return-void

    .line 1136
    :catch_26
    move-exception v0

    .line 1137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public updateMultiWindowTrayBar(Z)V
    .registers 4
    .param p1, "forceShow"    # Z

    .prologue
    .line 883
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$5;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 914
    return-void
.end method

.method public updateSettings()V
    .registers 14

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 389
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 390
    .local v5, "resolver":Landroid/content/ContentResolver;
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 391
    :try_start_b
    iget-boolean v9, p0, mIsRecentUI:Z

    if-eqz v9, :cond_17

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 392
    :cond_17
    const/4 v9, 0x1

    iput-boolean v9, p0, mFirstMultiWindowSettingOn:Z

    .line 395
    :cond_1a
    iget v4, p0, mEnableMultiWindowUISetting:I

    .line 396
    .local v4, "prevEnableMultiWindowUISetting":I
    const-string/jumbo v9, "multi_window_enabled"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v5, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iput v9, p0, mEnableMultiWindowUISetting:I

    .line 398
    const-string v9, "MultiPhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSetting mEnableMultiWindowUISetting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, mEnableMultiWindowUISetting:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-boolean v9, p0, mFirstMultiWindowSettingOn:Z

    if-eqz v9, :cond_c0

    iget-boolean v9, p0, mSystemReady:Z

    if-eqz v9, :cond_c0

    .line 400
    iget v9, p0, mEnableMultiWindowUISetting:I

    if-ne v9, v4, :cond_56

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportBezelUI(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_c0

    .line 402
    :cond_56
    const/4 v2, 0x1

    .line 403
    .local v2, "isUpdateMultiWindowTrayNeeded":Z
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 404
    .local v6, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 405
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "persona"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 406
    .local v3, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v0

    .line 407
    .local v0, "currUser":I
    const/16 v9, 0x64

    if-lt v0, v9, :cond_7e

    .line 408
    const/4 v2, 0x0

    .line 410
    .end local v0    # "currUser":I
    .end local v3    # "pm":Landroid/os/PersonaManager;
    :cond_7e
    if-eqz v2, :cond_c0

    .line 411
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_tray_shown"

    const/4 v11, 0x1

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-ne v9, v1, :cond_c2

    .line 413
    .local v1, "forceShow":Z
    :goto_91
    if-nez v1, :cond_a1

    .line 414
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "multi_window_tray_shown"

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v7, v9, v10, v11}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 416
    :cond_a1
    iget-object v7, p0, mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, needHideTrayBar(Landroid/view/WindowManagerPolicy$WindowState;Landroid/util/MutableBoolean;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 417
    const/4 v1, 0x0

    .line 419
    :cond_af
    invoke-virtual {p0, v1}, updateMultiWindowTrayBar(Z)V

    .line 420
    iget-boolean v7, p0, mSystemBooted:Z

    if-eqz v7, :cond_c0

    .line 421
    iget-object v7, p0, mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;

    invoke-direct {v9, p0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;-><init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    .end local v1    # "forceShow":Z
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_c0
    monitor-exit v8

    .line 432
    return-void

    .restart local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .restart local v6    # "versionInfo":Landroid/os/Bundle;
    :cond_c2
    move v1, v7

    .line 411
    goto :goto_91

    .line 430
    .end local v2    # "isUpdateMultiWindowTrayNeeded":Z
    .end local v4    # "prevEnableMultiWindowUISetting":I
    .end local v6    # "versionInfo":Landroid/os/Bundle;
    :catchall_c4
    move-exception v7

    monitor-exit v8
    :try_end_c6
    .catchall {:try_start_b .. :try_end_c6} :catchall_c4

    throw v7
.end method

.method public windowTypeToLayerLw(I)I
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 253
    const/16 v0, 0x899

    if-ne p1, v0, :cond_6

    .line 254
    const/4 v0, 0x5

    .line 261
    :goto_5
    return v0

    .line 255
    :cond_6
    const/16 v0, 0x89a

    if-eq p1, v0, :cond_e

    const/16 v0, 0x89b

    if-ne p1, v0, :cond_10

    .line 256
    :cond_e
    const/4 v0, 0x4

    goto :goto_5

    .line 257
    :cond_10
    const/16 v0, 0x8d4

    if-ne p1, v0, :cond_17

    .line 258
    const/16 v0, 0xb

    goto :goto_5

    .line 261
    :cond_17
    const/4 v0, -0x1

    goto :goto_5
.end method
