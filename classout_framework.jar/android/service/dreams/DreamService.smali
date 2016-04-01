.class public Landroid/service/dreams/DreamService;
.super Landroid/app/Service;
.source "DreamService.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/DreamService$DreamServiceWrapper;
    }
.end annotation


# static fields
.field public static final DREAM_META_DATA:Ljava/lang/String; = "android.service.dream"

.field public static final DREAM_SERVICE:Ljava/lang/String; = "dreams"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.dreams.DreamService"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanDoze:Z

.field private mDebug:Z

.field private mDozeScreenBrightness:I

.field private mDozeScreenState:I

.field private mDozing:Z

.field private mFinished:Z

.field private mFullscreen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInteractive:Z

.field private mLowProfile:Z

.field private final mSandman:Landroid/service/dreams/IDreamManager;

.field private mScreenBright:Z

.field private mStartScreenState:I

.field private mStarted:Z

.field private mWaking:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowToken:Landroid/os/IBinder;

.field private mWindowless:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 201
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/service/dreams/DreamService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 183
    iput-boolean v4, p0, mLowProfile:Z

    .line 185
    iput-boolean v4, p0, mScreenBright:Z

    .line 192
    iput v3, p0, mDozeScreenState:I

    .line 193
    iput v2, p0, mDozeScreenBrightness:I

    .line 195
    iput-boolean v3, p0, mDebug:Z

    .line 198
    iput v2, p0, mStartScreenState:I

    .line 202
    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, mSandman:Landroid/service/dreams/IDreamManager;

    .line 203
    return-void
.end method

.method static synthetic access$100(Landroid/service/dreams/DreamService;)Landroid/view/Window;
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    iget-object v0, p0, mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/dreams/DreamService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    iget-boolean v0, p0, mWindowless:Z

    return v0
.end method

.method static synthetic access$300(Landroid/service/dreams/DreamService;)Z
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    iget-boolean v0, p0, mDebug:Z

    return v0
.end method

.method static synthetic access$400(Landroid/service/dreams/DreamService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/service/dreams/DreamService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    iput-boolean p1, p0, mStarted:Z

    return p1
.end method

.method static synthetic access$600(Landroid/service/dreams/DreamService;Landroid/os/IBinder;Z)V
    .registers 3
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, attach(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/service/dreams/DreamService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/service/dreams/DreamService;)V
    .registers 1
    .param p0, "x0"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 154
    invoke-direct {p0}, detach()V

    return-void
.end method

.method static synthetic access$900(Landroid/service/dreams/DreamService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/service/dreams/DreamService;
    .param p1, "x1"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1}, wakeUp(Z)V

    return-void
.end method

.method private applyFlags(III)I
    .registers 6
    .param p1, "oldFlags"    # I
    .param p2, "flags"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1081
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v0, p1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private applySystemUiVisibilityFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1074
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-nez v1, :cond_13

    const/4 v0, 0x0

    .line 1075
    .local v0, "v":Landroid/view/View;
    :goto_5
    if-eqz v0, :cond_12

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, applyFlags(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1078
    :cond_12
    return-void

    .line 1074
    .end local v0    # "v":Landroid/view/View;
    :cond_13
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_5
.end method

.method private applyWindowFlags(II)V
    .registers 6
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1060
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-eqz v1, :cond_26

    .line 1061
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1062
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1, p1, p2}, applyFlags(III)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1063
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1064
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_26
    return-void
.end method

.method private final attach(Landroid/os/IBinder;Z)V
    .registers 13
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "canDoze"    # Z

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x7e7

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 966
    iget-object v2, p0, mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_24

    .line 967
    iget-object v2, p0, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attach() called when already attached with token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_23
    return-void

    .line 970
    :cond_24
    iget-boolean v2, p0, mFinished:Z

    if-nez v2, :cond_2c

    iget-boolean v2, p0, mWaking:Z

    if-eqz v2, :cond_3c

    .line 971
    :cond_2c
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "attach() called after dream already finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    :try_start_33
    iget-object v2, p0, mSandman:Landroid/service/dreams/IDreamManager;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_23

    .line 974
    :catch_3a
    move-exception v2

    goto :goto_23

    .line 980
    :cond_3c
    iput-object p1, p0, mWindowToken:Landroid/os/IBinder;

    .line 981
    iput-boolean p2, p0, mCanDoze:Z

    .line 982
    iget-boolean v2, p0, mWindowless:Z

    if-eqz v2, :cond_50

    iget-boolean v2, p0, mCanDoze:Z

    if-nez v2, :cond_50

    .line 983
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Only doze dreams can be windowless"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 985
    :cond_50
    iget-boolean v2, p0, mWindowless:Z

    if-nez v2, :cond_e4

    .line 986
    new-instance v2, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mWindow:Landroid/view/Window;

    .line 987
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 988
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 989
    iget-object v2, p0, mWindow:Landroid/view/Window;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    iget-object v2, p0, mWindow:Landroid/view/Window;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/view/Window;->setFormat(I)V

    .line 992
    iget-boolean v2, p0, mDebug:Z

    if-eqz v2, :cond_91

    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v5, "Attaching window token: %s to window of type %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_91
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 996
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 997
    iput-object p1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 998
    const v2, 0x10302f0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 999
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, 0x490101

    iget-boolean v2, p0, mFullscreen:Z

    if-eqz v2, :cond_f0

    const/16 v2, 0x400

    :goto_ab
    or-int/2addr v6, v2

    iget-boolean v2, p0, mScreenBright:Z

    if-eqz v2, :cond_f2

    const/16 v2, 0x80

    :goto_b2
    or-int/2addr v2, v6

    or-int/2addr v2, v5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1007
    iget-object v2, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1010
    iget-object v2, p0, mWindow:Landroid/view/Window;

    const/high16 v5, -0x80000000

    invoke-virtual {v2, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 1011
    iget-object v2, p0, mWindow:Landroid/view/Window;

    const-string v5, "dream"

    invoke-virtual {v2, v9, p1, v5, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 1013
    iget-boolean v2, p0, mLowProfile:Z

    if-eqz v2, :cond_ce

    move v3, v4

    :cond_ce
    invoke-direct {p0, v3, v4}, applySystemUiVisibilityFlags(II)V

    .line 1018
    :try_start_d1
    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_e4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d1 .. :try_end_e4} :catch_f4

    .line 1033
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e4
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/service/dreams/DreamService$1;

    invoke-direct {v3, p0}, Landroid/service/dreams/DreamService$1;-><init>(Landroid/service/dreams/DreamService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_23

    .restart local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_f0
    move v2, v3

    .line 999
    goto :goto_ab

    :cond_f2
    move v2, v3

    goto :goto_b2

    .line 1019
    :catch_f4
    move-exception v0

    .line 1023
    .local v0, "ex":Landroid/view/WindowManager$BadTokenException;
    iget-object v2, p0, TAG:Ljava/lang/String;

    const-string v3, "attach() called after window token already removed, dream will finish soon"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iput-object v9, p0, mWindow:Landroid/view/Window;

    goto/16 :goto_23
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3
    .param p0, "value"    # I

    .prologue
    .line 1119
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private final detach()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 926
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_16

    .line 927
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "detach(): Calling onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_11
    iput-boolean v4, p0, mStarted:Z

    .line 939
    invoke-virtual {p0}, onDreamingStopped()V

    .line 942
    :cond_16
    iget-object v0, p0, mWindow:Landroid/view/Window;

    if-eqz v0, :cond_36

    .line 944
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "detach(): Removing window from window manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_25
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 946
    iput-object v5, p0, mWindow:Landroid/view/Window;

    .line 949
    :cond_36
    iget-object v0, p0, mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_51

    .line 951
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Dream"

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerGlobal;->closeAll(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    iput-object v5, p0, mWindowToken:Landroid/os/IBinder;

    .line 954
    iput-boolean v4, p0, mCanDoze:Z

    .line 956
    :cond_51
    return-void
.end method

.method private getSystemUiVisibilityFlagValue(IZ)Z
    .registers 5
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1069
    iget-object v1, p0, mWindow:Landroid/view/Window;

    if-nez v1, :cond_8

    const/4 v0, 0x0

    .line 1070
    .local v0, "v":Landroid/view/View;
    :goto_5
    if-nez v0, :cond_f

    .end local p2    # "defaultValue":Z
    :goto_7
    return p2

    .line 1069
    .end local v0    # "v":Landroid/view/View;
    .restart local p2    # "defaultValue":Z
    :cond_8
    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 1070
    .restart local v0    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_18

    const/4 p2, 0x1

    goto :goto_7

    :cond_18
    const/4 p2, 0x0

    goto :goto_7
.end method

.method private getWindowFlagValue(IZ)Z
    .registers 4
    .param p1, "flag"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 1056
    iget-object v0, p0, mWindow:Landroid/view/Window;

    if-nez v0, :cond_5

    .end local p2    # "defaultValue":Z
    :goto_4
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_5
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_12

    const/4 p2, 0x1

    goto :goto_4

    :cond_12
    const/4 p2, 0x0

    goto :goto_4
.end method

.method private updateDoze()V
    .registers 5

    .prologue
    .line 641
    iget-boolean v0, p0, mDozing:Z

    if-eqz v0, :cond_f

    .line 643
    :try_start_4
    iget-object v0, p0, mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    iget v2, p0, mDozeScreenState:I

    iget v3, p0, mDozeScreenBrightness:I

    invoke-interface {v0, v1, v2, v3}, Landroid/service/dreams/IDreamManager;->startDozing(Landroid/os/IBinder;II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 648
    :cond_f
    :goto_f
    return-void

    .line 644
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method private wakeUp(Z)V
    .registers 5
    .param p1, "fromSystem"    # Z

    .prologue
    .line 879
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeUp(): fromSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWaking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mWaking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_35
    iget-boolean v0, p0, mWaking:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_54

    .line 883
    const/4 v0, 0x1

    iput-boolean v0, p0, mWaking:Z

    .line 888
    invoke-virtual {p0}, onWakeUp()V

    .line 892
    if-nez p1, :cond_54

    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_54

    .line 893
    iget-object v0, p0, mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_55

    .line 894
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "WakeUp was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_54
    :goto_54
    return-void

    .line 897
    :cond_55
    :try_start_55
    iget-object v0, p0, mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_54

    .line 898
    :catch_5e
    move-exception v0

    goto :goto_54
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 461
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    return-void
.end method

.method public canDoze()Z
    .registers 2

    .prologue
    .line 601
    iget-boolean v0, p0, mCanDoze:Z

    return v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 267
    iget-boolean v0, p0, mInteractive:Z

    if-nez v0, :cond_2d

    .line 268
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Waking up on genericMotionEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_28

    .line 271
    :cond_26
    const/4 v0, 0x0

    .line 275
    :goto_27
    return v0

    .line 272
    :cond_28
    invoke-virtual {p0}, wakeUp()V

    .line 273
    const/4 v0, 0x1

    goto :goto_27

    .line 275
    :cond_2d
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_27
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 217
    iget-boolean v1, p0, mInteractive:Z

    if-nez v1, :cond_14

    .line 218
    iget-boolean v1, p0, mDebug:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Waking up on keyEvent"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_10
    invoke-virtual {p0}, wakeUp()V

    .line 226
    :goto_13
    return v0

    .line 221
    :cond_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_22

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_31

    .line 222
    :cond_22
    iget-boolean v1, p0, mDebug:Z

    if-eqz v1, :cond_2d

    iget-object v1, p0, TAG:Ljava/lang/String;

    const-string v2, "Waking up back or home key"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_2d
    invoke-virtual {p0}, wakeUp()V

    goto :goto_13

    .line 226
    :cond_31
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 232
    iget-boolean v0, p0, mInteractive:Z

    if-nez v0, :cond_14

    .line 233
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Waking up on keyShortcutEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_f
    invoke-virtual {p0}, wakeUp()V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    iget-boolean v0, p0, mInteractive:Z

    if-nez v0, :cond_14

    .line 246
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Waking up on touchEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_f
    invoke-virtual {p0}, wakeUp()V

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    iget-boolean v0, p0, mInteractive:Z

    if-nez v0, :cond_14

    .line 257
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Waking up on trackballEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_f
    invoke-virtual {p0}, wakeUp()V

    .line 259
    const/4 v0, 0x1

    .line 261
    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1086
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/dreams/DreamService$2;

    invoke-direct {v1, p0, p1, p3}, Landroid/service/dreams/DreamService$2;-><init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    const-string v3, ""

    const-wide/16 v4, 0x3e8

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 1092
    return-void
.end method

.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_bf

    .line 1098
    const-string/jumbo v0, "stopped"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const-string v0, "  flags:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1104
    invoke-virtual {p0}, isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, " interactive"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    :cond_4a
    invoke-virtual {p0}, isLowProfile()Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, " lowprofile"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    :cond_55
    invoke-virtual {p0}, isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, " fullscreen"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    :cond_60
    invoke-virtual {p0}, isScreenBright()Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, " bright"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1108
    :cond_6b
    invoke-virtual {p0}, isWindowless()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, " windowless"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    :cond_76
    invoke-virtual {p0}, isDozing()Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string v0, " dozing"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    :cond_81
    :goto_81
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1112
    invoke-virtual {p0}, canDoze()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  doze screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    :cond_be
    return-void

    .line 1100
    :cond_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running (token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_22

    .line 1110
    :cond_e0
    invoke-virtual {p0}, canDoze()Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, " candoze"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_81
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final finish()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 848
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish(): mFinished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_1f
    iget-boolean v0, p0, mFinished:Z

    if-nez v0, :cond_33

    .line 851
    iput-boolean v3, p0, mFinished:Z

    .line 853
    iget-object v0, p0, mWindowToken:Landroid/os/IBinder;

    if-nez v0, :cond_34

    .line 854
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "Finish was called before the dream was attached."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_30
    invoke-virtual {p0}, stopSelf()V

    .line 865
    :cond_33
    return-void

    .line 857
    :cond_34
    :try_start_34
    iget-object v0, p0, mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/service/dreams/IDreamManager;->finishSelf(Landroid/os/IBinder;Z)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 858
    :catch_3d
    move-exception v0

    goto :goto_30
.end method

.method public getDozeScreenBrightness()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, mDozeScreenBrightness:I

    return v0
.end method

.method public getDozeScreenState()I
    .registers 2

    .prologue
    .line 698
    iget v0, p0, mDozeScreenState:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, mWindow:Landroid/view/Window;

    if-eqz v0, :cond_b

    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDozing()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, mDozing:Z

    return v0
.end method

.method public isFullscreen()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, mFullscreen:Z

    return v0
.end method

.method public isInteractive()Z
    .registers 2

    .prologue
    .line 496
    iget-boolean v0, p0, mInteractive:Z

    return v0
.end method

.method public isLowProfile()Z
    .registers 3

    .prologue
    .line 522
    const/4 v0, 0x1

    iget-boolean v1, p0, mLowProfile:Z

    invoke-direct {p0, v0, v1}, getSystemUiVisibilityFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isScreenBright()Z
    .registers 3

    .prologue
    .line 569
    const/16 v0, 0x80

    iget-boolean v1, p0, mScreenBright:Z

    invoke-direct {p0, v0, v1}, getWindowFlagValue(IZ)Z

    move-result v0

    return v0
.end method

.method public isWindowless()Z
    .registers 2

    .prologue
    .line 587
    iget-boolean v0, p0, mWindowless:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 377
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 372
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 836
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind() intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_1d
    new-instance v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/dreams/DreamService$DreamServiceWrapper;-><init>(Landroid/service/dreams/DreamService;Landroid/service/dreams/DreamService$1;)V

    return-object v0
.end method

.method public onContentChanged()V
    .registers 1

    .prologue
    .line 322
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 796
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_c
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 798
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 909
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_c
    invoke-direct {p0}, detach()V

    .line 915
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 916
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 337
    return-void
.end method

.method public onDreamingStarted()V
    .registers 3

    .prologue
    .line 804
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_c
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .prologue
    .line 813
    iget-boolean v0, p0, mDebug:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDreamingStopped()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_c
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 342
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/SearchEvent;

    .prologue
    .line 347
    invoke-virtual {p0}, onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onWakeUp()V
    .registers 1

    .prologue
    .line 830
    invoke-virtual {p0}, finish()V

    .line 831
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .registers 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 317
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 327
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 413
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 414
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 429
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 430
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 449
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    return-void
.end method

.method public setDebug(Z)V
    .registers 2
    .param p1, "dbg"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, mDebug:Z

    .line 210
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .registers 3
    .param p1, "brightness"    # I

    .prologue
    .line 782
    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 783
    invoke-static {p1}, clampAbsoluteBrightness(I)I

    move-result p1

    .line 785
    :cond_7
    iget v0, p0, mDozeScreenBrightness:I

    if-eq v0, p1, :cond_10

    .line 786
    iput p1, p0, mDozeScreenBrightness:I

    .line 787
    invoke-direct {p0}, updateDoze()V

    .line 789
    :cond_10
    return-void
.end method

.method public setDozeScreenState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 733
    iget v0, p0, mDozeScreenState:I

    if-eq v0, p1, :cond_9

    .line 734
    iput p1, p0, mDozeScreenState:I

    .line 735
    invoke-direct {p0}, updateDoze()V

    .line 737
    :cond_9
    return-void
.end method

.method public setFullscreen(Z)V
    .registers 4
    .param p1, "fullscreen"    # Z

    .prologue
    .line 533
    iget-boolean v1, p0, mFullscreen:Z

    if-eq v1, p1, :cond_10

    .line 534
    iput-boolean p1, p0, mFullscreen:Z

    .line 535
    const/16 v0, 0x400

    .line 536
    .local v0, "flag":I
    iget-boolean v1, p0, mFullscreen:Z

    if-eqz v1, :cond_11

    move v1, v0

    :goto_d
    invoke-direct {p0, v1, v0}, applyWindowFlags(II)V

    .line 538
    .end local v0    # "flag":I
    :cond_10
    return-void

    .line 536
    .restart local v0    # "flag":I
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setInteractive(Z)V
    .registers 2
    .param p1, "interactive"    # Z

    .prologue
    .line 487
    iput-boolean p1, p0, mInteractive:Z

    .line 488
    return-void
.end method

.method public setLowProfile(Z)V
    .registers 4
    .param p1, "lowProfile"    # Z

    .prologue
    .line 508
    iget-boolean v1, p0, mLowProfile:Z

    if-eq v1, p1, :cond_f

    .line 509
    iput-boolean p1, p0, mLowProfile:Z

    .line 510
    const/4 v0, 0x1

    .line 511
    .local v0, "flag":I
    iget-boolean v1, p0, mLowProfile:Z

    if-eqz v1, :cond_10

    move v1, v0

    :goto_c
    invoke-direct {p0, v1, v0}, applySystemUiVisibilityFlags(II)V

    .line 513
    .end local v0    # "flag":I
    :cond_f
    return-void

    .line 511
    .restart local v0    # "flag":I
    :cond_10
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public setScreenBright(Z)V
    .registers 4
    .param p1, "screenBright"    # Z

    .prologue
    .line 555
    iget-boolean v1, p0, mScreenBright:Z

    if-eq v1, p1, :cond_10

    .line 556
    iput-boolean p1, p0, mScreenBright:Z

    .line 557
    const/16 v0, 0x80

    .line 558
    .local v0, "flag":I
    iget-boolean v1, p0, mScreenBright:Z

    if-eqz v1, :cond_11

    move v1, v0

    :goto_d
    invoke-direct {p0, v1, v0}, applyWindowFlags(II)V

    .line 560
    .end local v0    # "flag":I
    :cond_10
    return-void

    .line 558
    .restart local v0    # "flag":I
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setWindowless(Z)V
    .registers 2
    .param p1, "windowless"    # Z

    .prologue
    .line 578
    iput-boolean p1, p0, mWindowless:Z

    .line 579
    return-void
.end method

.method public startDozing()V
    .registers 2

    .prologue
    .line 634
    iget-boolean v0, p0, mCanDoze:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, mDozing:Z

    if-nez v0, :cond_e

    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, mDozing:Z

    .line 636
    invoke-direct {p0}, updateDoze()V

    .line 638
    :cond_e
    return-void
.end method

.method public stopDozing()V
    .registers 3

    .prologue
    .line 662
    iget-boolean v0, p0, mDozing:Z

    if-eqz v0, :cond_e

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, mDozing:Z

    .line 665
    :try_start_7
    iget-object v0, p0, mSandman:Landroid/service/dreams/IDreamManager;

    iget-object v1, p0, mWindowToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->stopDozing(Landroid/os/IBinder;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 670
    :cond_e
    :goto_e
    return-void

    .line 666
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public final wakeUp()V
    .registers 2

    .prologue
    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, wakeUp(Z)V

    .line 876
    return-void
.end method
