.class public Lcom/samsung/android/dualscreen/DualScreenManager;
.super Ljava/lang/Object;
.source "DualScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ACTIVITY_OPTION:Ljava/lang/String; = "dualscreen:activityoption"

.field public static final BUNDLE_KEY_DISPLAYID:Ljava/lang/String; = "dualscreen:displayid"

.field public static final BUNDLE_KEY_NO_ANIM:Ljava/lang/String; = "dualscreen:noanim"

.field public static final DEBUG:Z

.field public static final DEBUG_AM:Z

.field public static final DEBUG_VERBOSE:Z

.field public static final DEBUG_WARNING:Z

.field public static final DEBUG_WM:Z

.field public static final EXPAND_REQUEST_REASON_EXTERNAL_APP_TRIGGER:I = 0xc9

.field public static final EXPAND_REQUEST_REASON_OUTSPREAD_FROM_FOLDED:I = 0xca

.field public static final FLAG_FINISH_ALL_ABOVE_CHOSEN_ACTIVITY:I = 0x1000

.field public static final FLAG_FINISH_CALLED_ACTIVITIES:I = 0x200

.field public static final FLAG_FINISH_REMAIN_TOP_ACTIVITY:I = 0x2000

.field public static final FLAG_FINISH_SOURCE_ACTIVITY:I = 0x400

.field public static final FLAG_FINISH_TASK:I = 0x100

.field public static final FLAG_FINISH_TOP_ACTIVITY:I = 0x800

.field public static final INTENT_EXTRA_COUPLED:Ljava/lang/String; = "dualscreen:coupled"

.field public static final INTENT_EXTRA_SCREEN:Ljava/lang/String; = "dualscreen:screen"

.field private static final REQUIRED_MINIMUM_SDK_VERSION_CODE:I = 0x8

.field private static final REQUIRED_MINIMUM_SDK_VERSION_NAME:Ljava/lang/String; = "0.8"

.field public static final SAFE_DEBUG:Z

.field public static final SHRINK_REQUEST_REASON_EXTERNAL_APP_TRIGGER:I = 0x67

.field public static final SHRINK_REQUEST_REASON_HOME_LAUNCH:I = 0x68

.field public static final SHRINK_REQUEST_REASON_NEW_TASK_LAUNCH:I = 0x66

.field public static final SHRINK_REQUEST_REASON_SCREEN_OFF:I = 0x65

.field public static final TAG:Ljava/lang/String;

.field public static final TAG_DUALSCREEN:Ljava/lang/String; = "[DUALSCREEN]"

.field public static final TRANSIT_EXPAND:I = 0x1

.field public static final TRANSIT_SHRINK:I = 0x2

.field private static final VERSION_CODE:I = 0x5

.field private static final VERSION_NAME:Ljava/lang/String; = "0.5"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field final mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

.field mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    const-class v0, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_38

    move v0, v1

    :goto_11
    sput-boolean v0, SAFE_DEBUG:Z

    .line 64
    sput-boolean v1, DEBUG:Z

    .line 65
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3a

    move v0, v2

    :goto_1a
    sput-boolean v0, DEBUG_WM:Z

    .line 66
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3c

    move v0, v2

    :goto_21
    sput-boolean v0, DEBUG_AM:Z

    .line 67
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3e

    move v0, v2

    :goto_28
    sput-boolean v0, DEBUG_VERBOSE:Z

    .line 68
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_40

    :goto_2e
    sput-boolean v2, DEBUG_WARNING:Z

    .line 125
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$2;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenManager$2;-><init>()V

    sput-object v0, gDefault:Landroid/util/Singleton;

    return-void

    :cond_38
    move v0, v2

    .line 62
    goto :goto_11

    :cond_3a
    move v0, v1

    .line 65
    goto :goto_1a

    :cond_3c
    move v0, v1

    .line 66
    goto :goto_21

    :cond_3e
    move v0, v1

    .line 67
    goto :goto_28

    :cond_40
    move v2, v1

    .line 68
    goto :goto_2e
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/DualScreenManager$1;-><init>(Lcom/samsung/android/dualscreen/DualScreenManager;)V

    iput-object v0, p0, mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/DualScreenManager$1;-><init>(Lcom/samsung/android/dualscreen/DualScreenManager;)V

    iput-object v0, p0, mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .line 161
    if-nez p1, :cond_17

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_17
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_5b

    .line 165
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualScreenManager() : context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " @0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5b
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public static canBeExpanded(I)Z
    .registers 4
    .param p0, "taskId"    # I

    .prologue
    .line 209
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_b

    .line 210
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "canBeExpanded()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_b
    :try_start_b
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeExpanded(I)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v1

    .line 217
    :goto_13
    return v1

    .line 214
    :catch_14
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 217
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static fixTask(I)V
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 257
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 258
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fixTask() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1c
    if-gez p0, :cond_27

    .line 261
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "taskId < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 264
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->fixTask(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 268
    :goto_2e
    return-void

    .line 265
    :catch_2f
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2e
.end method

.method public static fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 297
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 298
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pinUp() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1d
    if-nez p0, :cond_28

    .line 301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_28
    :try_start_28
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->fixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 308
    :goto_2f
    return-void

    .line 305
    :catch_30
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2f
.end method

.method public static forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 341
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 342
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceFocusScreen() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1c
    if-nez p0, :cond_27

    .line 345
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->forceFocusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 352
    :goto_2e
    return-void

    .line 349
    :catch_2f
    move-exception v0

    .line 350
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2e
.end method

.method private static getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;
    .registers 1

    .prologue
    .line 145
    sget-object v0, gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    return-object v0
.end method

.method public static getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 5

    .prologue
    .line 361
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_b

    .line 362
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "getFocusedScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_b
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 366
    .local v1, "ret":Lcom/samsung/android/dualscreen/DualScreen;
    :try_start_d
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getFocusedScreen()Lcom/samsung/android/dualscreen/DualScreen;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_2e

    move-result-object v1

    .line 370
    :goto_15
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFocusedScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v1

    .line 367
    :catch_2e
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public static getFrameworkVersionCode()I
    .registers 2

    .prologue
    .line 381
    sget-boolean v0, DEBUG_VERBOSE:Z

    if-eqz v0, :cond_b

    .line 382
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "getFrameworkVersionCode() : 5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_b
    const/4 v0, 0x5

    return v0
.end method

.method public static getFrameworkVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    sget-boolean v0, DEBUG_VERBOSE:Z

    if-eqz v0, :cond_b

    .line 395
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "getFrameworkVersionName() : 0.5"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_b
    const-string v0, "0.5"

    return-object v0
.end method

.method public static getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 432
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 433
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrientation() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_1c
    if-nez p0, :cond_27

    .line 437
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_30

    move-result v1

    .line 445
    :goto_2f
    return v1

    .line 442
    :catch_30
    move-exception v0

    .line 443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 445
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public static getRequiredMinimumSdkVersionCode()I
    .registers 2

    .prologue
    .line 455
    sget-boolean v0, DEBUG_VERBOSE:Z

    if-eqz v0, :cond_b

    .line 456
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "getRequiredMinimumSdkVersionCode() : 8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_b
    const/16 v0, 0x8

    return v0
.end method

.method public static getRequiredMinimumSdkVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    sget-boolean v0, DEBUG_VERBOSE:Z

    if-eqz v0, :cond_b

    .line 469
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "getRequiredMinimumSdkVersionName() : 0.8"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_b
    const-string v0, "0.8"

    return-object v0
.end method

.method public static getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 510
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 511
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreen() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1c
    if-gez p0, :cond_26

    .line 514
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid taskId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_26
    :try_start_26
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 521
    :goto_2e
    return-object v1

    .line 518
    :catch_2f
    move-exception v0

    .line 519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 521
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_2e
.end method

.method public static getShrinkRequested(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 531
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_b

    .line 532
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "getShrinkRequested()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_b
    if-nez p0, :cond_15

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_15
    const/4 v0, 0x0

    .line 539
    .local v0, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getShrinkRequested()Z

    move-result v0

    .line 540
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_36

    .line 541
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShrinkRequested() ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_36
    return v0
.end method

.method public static getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 554
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 555
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTaskInfo() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1c
    if-gez p0, :cond_26

    .line 559
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid task id"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_26
    :try_start_26
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTaskInfo(I)Lcom/samsung/android/dualscreen/TaskInfo;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_2f

    move-result-object v1

    .line 566
    :goto_2e
    return-object v1

    .line 564
    :catch_2f
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 566
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public static getTopRunningTaskId(Lcom/samsung/android/dualscreen/DualScreen;)I
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 579
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 580
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopRunningTaskId() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_1c
    if-nez p0, :cond_27

    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTopRunningTaskIdWithPermission(Lcom/samsung/android/dualscreen/DualScreen;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_30

    move-result v1

    .line 590
    :goto_2f
    return v1

    .line 588
    :catch_30
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 590
    const/4 v1, -0x1

    goto :goto_2f
.end method

.method public static getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 603
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 604
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopRunningTaskInfo() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_1c
    if-nez p0, :cond_27

    .line 608
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_30

    move-result-object v1

    .line 615
    :goto_2f
    return-object v1

    .line 613
    :catch_30
    move-exception v0

    .line 614
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 615
    const/4 v1, 0x0

    goto :goto_2f
.end method

.method public static getWindowManager(Landroid/content/Context;Lcom/samsung/android/dualscreen/DualScreen;)Landroid/view/WindowManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 629
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isExpandable(I)Z
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 672
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1c

    .line 673
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExpandable() taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1c
    :try_start_1c
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->isExpandable(I)Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_25

    move-result v1

    .line 681
    :goto_24
    return v1

    .line 678
    :catch_25
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 681
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public static isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z
    .registers 4
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 694
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_b

    .line 695
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "isInFixedScreenMode()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_b
    :try_start_b
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->isInFixedScreenMode(Lcom/samsung/android/dualscreen/DualScreen;)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_14

    move-result v1

    .line 703
    :goto_13
    return v1

    .line 700
    :catch_14
    move-exception v0

    .line 701
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    .line 703
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static makeIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/dualscreen/DualScreen;I)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p3, "flags"    # I

    .prologue
    const/high16 v7, 0x10000000

    .line 720
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_3d

    .line 721
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeIntent() : targetScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_3d
    if-nez p0, :cond_47

    .line 727
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_47
    if-nez p1, :cond_51

    .line 729
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "intent is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 730
    :cond_51
    if-nez p2, :cond_5c

    .line 731
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "targetScreen is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 734
    :cond_5c
    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    instance-of v4, p0, Landroid/app/Activity;

    if-nez v4, :cond_6e

    .line 736
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context should be Activity to use FLAG_COUPLED_TASK_XXX flags"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 740
    :cond_6e
    instance-of v4, p0, Landroid/app/Activity;

    if-eqz v4, :cond_e4

    move-object v0, p0

    .line 741
    check-cast v0, Landroid/app/Activity;

    .line 742
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    .line 743
    .local v3, "token":Landroid/os/IBinder;
    if-nez v3, :cond_83

    .line 744
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid activity token"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :cond_83
    const/4 v1, 0x1

    .line 748
    .local v1, "canBeCoupled":Z
    :try_start_84
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeCoupled(Landroid/os/IBinder;)Z
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8b} :catch_a0

    move-result v1

    .line 754
    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 755
    if-nez v1, :cond_a5

    .line 756
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->getCoupledTaskFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->clearFlags(I)V

    .line 777
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "canBeCoupled":Z
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_9f
    :goto_9f
    return-object p1

    .line 749
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "canBeCoupled":Z
    .restart local v3    # "token":Landroid/os/IBinder;
    :catch_a0
    move-exception v2

    .line 750
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, warningException(Ljava/lang/Exception;)V

    goto :goto_9f

    .line 761
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_a5
    invoke-static {p3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->hasCoupledTaskFlags(I)Z

    move-result v4

    if-nez v4, :cond_b8

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_b8

    .line 763
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 771
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "canBeCoupled":Z
    .end local v3    # "token":Landroid/os/IBinder;
    :cond_b8
    :goto_b8
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 772
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFlags(I)V

    .line 774
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_9f

    .line 775
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeIntent() intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 766
    :cond_e4
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeIntent called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b8
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;)V
    .registers 5
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 877
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    .line 878
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToScreen() : taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_27
    if-nez p1, :cond_32

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "toScreen is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_32
    if-gez p0, :cond_4e

    .line 886
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToScreen() : there is no valid task taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :goto_4d
    return-void

    .line 889
    :cond_4e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    goto :goto_4d
.end method

.method public static moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    .registers 8
    .param p0, "taskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 905
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_3b

    .line 906
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToFront() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", toScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", options="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_3b
    if-gez p0, :cond_46

    .line 911
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "taskId should be positive value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 914
    :cond_46
    :try_start_46
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->moveTaskToScreenWithPermission(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_4e

    .line 918
    :goto_4d
    return-void

    .line 915
    :catch_4e
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_4d
.end method

.method public static moveTaskToScreen(Lcom/samsung/android/dualscreen/DualScreen;Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 7
    .param p0, "fromScreen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 842
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_27

    .line 843
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToScreen() : fromScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_27
    if-ne p0, p1, :cond_32

    .line 847
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "target and source screen are same."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 848
    :cond_32
    if-nez p0, :cond_3c

    .line 849
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "fromScreen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 850
    :cond_3c
    if-nez p1, :cond_47

    .line 851
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "toScreen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    :cond_47
    invoke-static {p0}, getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .line 855
    .local v0, "tInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    const/4 v1, -0x1

    .line 856
    .local v1, "targetTaskId":I
    if-eqz v0, :cond_52

    .line 857
    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v1

    .line 860
    :cond_52
    if-gez v1, :cond_78

    .line 861
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveTaskToScreen() : there is no valid task on fromScreen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " targetTaskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_77
    return-void

    .line 865
    :cond_78
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    goto :goto_77
.end method

.method public static parseDualScreenLaunchParams(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v11, 0x10000000

    .line 935
    if-eqz p1, :cond_c

    .line 936
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 937
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_c

    if-nez p0, :cond_d

    .line 992
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_c
    :goto_c
    return-void

    .line 940
    .restart local v1    # "b":Landroid/os/Bundle;
    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    .line 941
    .local v4, "displayId":I
    invoke-static {v4}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v3

    .line 942
    .local v3, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    const-string v8, "dualscreen:screen"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "screen":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 944
    .local v6, "targetScreen":Lcom/samsung/android/dualscreen/DualScreen;
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_30

    .line 945
    const-string/jumbo v8, "main"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a4

    .line 946
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    .line 959
    :cond_30
    :goto_30
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v6, v8, :cond_3b

    .line 960
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 963
    :cond_3b
    instance-of v8, p0, Landroid/app/Activity;

    if-eqz v8, :cond_e0

    .line 964
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_62

    .line 965
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " called from Activity context"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    move-object v0, p0

    .line 968
    check-cast v0, Landroid/app/Activity;

    .line 969
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    .line 970
    .local v7, "token":Landroid/os/IBinder;
    if-eqz v7, :cond_c

    .line 973
    const-string v8, "dualscreen:coupled"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 974
    .local v2, "coupled":Ljava/lang/Boolean;
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_92

    .line 975
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseDualScreenLaunchParams : coupled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_92
    if-eqz v2, :cond_d5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 978
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->addFlags(I)V

    goto/16 :goto_c

    .line 947
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "coupled":Ljava/lang/Boolean;
    .end local v7    # "token":Landroid/os/IBinder;
    :cond_a4
    const-string/jumbo v8, "sub"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 948
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_30

    .line 949
    :cond_b0
    const-string v8, "full"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_bc

    .line 950
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_30

    .line 951
    :cond_bc
    const-string/jumbo v8, "opposite"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 952
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v8, :cond_cd

    .line 953
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_30

    .line 954
    :cond_cd
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v3, v8, :cond_30

    .line 955
    sget-object v6, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    goto/16 :goto_30

    .line 979
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "coupled":Ljava/lang/Boolean;
    .restart local v7    # "token":Landroid/os/IBinder;
    :cond_d5
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v6, v8, :cond_c

    if-eq v3, v6, :cond_c

    .line 980
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 982
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "coupled":Ljava/lang/Boolean;
    .end local v7    # "token":Landroid/os/IBinder;
    :cond_e0
    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    if-eq v6, v8, :cond_c

    .line 983
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_101

    .line 984
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_101
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseDualScreenLaunchParams : targetScreen="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " called from non-Activity context; forcing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_c
.end method

.method public static parseDualScreenLaunchParams(Landroid/content/Context;[Landroid/content/Intent;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 995
    if-eqz p1, :cond_f

    .line 996
    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v3, :cond_f

    aget-object v2, v0, v1

    .line 997
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v2}, parseDualScreenLaunchParams(Landroid/content/Context;Landroid/content/Intent;)V

    .line 996
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1000
    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_f
    return-void
.end method

.method private registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .registers 6
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    .line 1335
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_32

    .line 1336
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerDualScreenCallbacks() : callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_32
    :try_start_32
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 1344
    :goto_39
    return-void

    .line 1341
    :catch_3a
    move-exception v0

    .line 1342
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_39
.end method

.method public static sendExpandRequest(I)V
    .registers 5
    .param p0, "targetTaskId"    # I

    .prologue
    .line 1098
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1099
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendExpandRequest() targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_1d
    :try_start_1d
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->sendExpandRequest(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_25

    .line 1106
    :goto_24
    return-void

    .line 1103
    :catch_25
    move-exception v0

    .line 1104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_24
.end method

.method public static sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V
    .registers 6
    .param p0, "targetTaskId"    # I
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1114
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_27

    .line 1115
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendShrinkRequest() targetTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " toScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_27
    :try_start_27
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 1122
    :goto_2e
    return-void

    .line 1119
    :catch_2f
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2e
.end method

.method public static swapTopTask()V
    .registers 3

    .prologue
    .line 1216
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    .line 1217
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "swapTopTask()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_c
    :try_start_c
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->swapTopTask()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    :goto_13
    return-void

    .line 1221
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 1222
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_13
.end method

.method public static unfixTask(I)V
    .registers 5
    .param p0, "taskId"    # I

    .prologue
    .line 277
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 278
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unfixTask() : taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1d
    if-gez p0, :cond_28

    .line 281
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "taskId < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_28
    :try_start_28
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unfixTask(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 288
    :goto_2f
    return-void

    .line 285
    :catch_30
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2f
.end method

.method public static unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 5
    .param p0, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 1252
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1d

    .line 1253
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unfixTopTask() : screen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_1d
    if-nez p0, :cond_28

    .line 1256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "screen is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1259
    :cond_28
    :try_start_28
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unfixTopTask(Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    .line 1263
    :goto_2f
    return-void

    .line 1260
    :catch_30
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_2f
.end method

.method private unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .registers 6
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    .line 1353
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_32

    .line 1354
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterDualScreenCallbacks() : callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_32
    :try_start_32
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_39} :catch_3a

    .line 1362
    :goto_39
    return-void

    .line 1359
    :catch_3a
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, warningException(Ljava/lang/Exception;)V

    goto :goto_39
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1323
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    return-void
.end method


# virtual methods
.method public canBeCoupled()Z
    .registers 5

    .prologue
    .line 179
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_b

    .line 180
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "canBeCoupled()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b
    :try_start_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_22

    .line 184
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 185
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->canBeCoupled(Landroid/os/IBinder;)Z

    move-result v2

    .line 194
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_21
    return v2

    .line 187
    :cond_22
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "canBeCoupled() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "canBeCoupled() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_31} :catch_31

    .line 191
    :catch_31
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    .line 194
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public dimScreen(Lcom/samsung/android/dualscreen/DualScreen;Z)V
    .registers 8
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "enable"    # Z

    .prologue
    .line 227
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_26

    .line 228
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dimScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_26
    if-nez p1, :cond_31

    .line 232
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "screen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_31
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_3f

    .line 236
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :cond_3f
    :try_start_3f
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_54

    .line 241
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 242
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->dimScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_54} :catch_55

    .line 247
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_54
    :goto_54
    return-void

    .line 244
    :catch_55
    move-exception v1

    .line 245
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_54
.end method

.method public finishCoupledActivity(I)V
    .registers 6
    .param p1, "flags"    # I

    .prologue
    .line 1181
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_b

    .line 1182
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "finishCoupledActivity()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_b
    :try_start_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_21

    .line 1186
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1187
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->finishCoupledActivity(Landroid/os/IBinder;I)V

    .line 1196
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_20
    return-void

    .line 1189
    :cond_21
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "finishCoupledActivity() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "finishCoupledActivity() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_30

    .line 1193
    :catch_30
    move-exception v1

    .line 1194
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_20
.end method

.method public focusScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 7
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 317
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1c

    .line 318
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "focusScreen() : screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1c
    if-nez p1, :cond_27

    .line 321
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "screen is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_27
    :try_start_27
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3c

    .line 326
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 327
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->focusScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3c} :catch_3d

    .line 332
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_3c
    :goto_3c
    return-void

    .line 329
    :catch_3d
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_3c
.end method

.method getListenerInfo()Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;
    .registers 2

    .prologue
    .line 1298
    iget-object v0, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    if-eqz v0, :cond_7

    .line 1299
    iget-object v0, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    .line 1303
    :goto_6
    return-object v0

    .line 1301
    :cond_7
    iget-object v0, p0, mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    invoke-direct {p0, v0}, registerDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    .line 1302
    new-instance v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;-><init>()V

    iput-object v0, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    .line 1303
    iget-object v0, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    goto :goto_6
.end method

.method public getOrientation()I
    .registers 5

    .prologue
    .line 410
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_b

    .line 411
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "getOrientation()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_1e

    .line 414
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 415
    .local v1, "displayId":I
    invoke-static {v1}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    .line 416
    .local v0, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    invoke-static {v0}, getOrientation(Lcom/samsung/android/dualscreen/DualScreen;)I

    move-result v2

    .line 418
    .end local v0    # "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    .end local v1    # "displayId":I
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 6

    .prologue
    .line 483
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_b

    .line 484
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "getScreen()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_b
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_36

    .line 487
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 488
    .local v0, "displayId":I
    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .line 489
    .local v1, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_35

    .line 490
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v0    # "displayId":I
    .end local v1    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_35
    :goto_35
    return-object v1

    .line 494
    :cond_36
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_54

    .line 495
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScreen() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_54
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_35
.end method

.method public moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 11
    .param p1, "toScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_1e

    .line 791
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveToScreen() : toScreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1e
    iget-object v6, p0, mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-nez v6, :cond_2c

    .line 795
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "context should be an Activity instance"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 798
    :cond_2c
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_3a

    .line 799
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 800
    .local v3, "displayId":I
    invoke-static {v3}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    .line 803
    .end local v3    # "displayId":I
    :cond_3a
    if-ne v1, p1, :cond_45

    .line 804
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "target and source screen are same."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 805
    :cond_45
    if-nez v1, :cond_4f

    .line 806
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "fromScreen is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 807
    :cond_4f
    if-nez p1, :cond_5a

    .line 808
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "toScreen is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 811
    :cond_5a
    invoke-static {v1}, getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v5

    .line 812
    .local v5, "tInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    const/4 v2, -0x1

    .line 813
    .local v2, "currentTaskId":I
    if-eqz v5, :cond_65

    .line 814
    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    .line 817
    :cond_65
    if-gez v2, :cond_8b

    .line 818
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveToScreen() : there is no valid task on currentScreen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " currentTaskId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_8a
    :goto_8a
    return-void

    .line 824
    :cond_8b
    :try_start_8b
    iget-object v6, p0, mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_8a

    .line 825
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 826
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->moveTaskToScreen(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_a0} :catch_a1

    goto :goto_8a

    .line 828
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_a1
    move-exception v4

    .line 829
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v4}, warningException(Ljava/lang/Exception;)V

    goto :goto_8a
.end method

.method public overrideNextAppTransition(Lcom/samsung/android/dualscreen/DualScreen;I)V
    .registers 7
    .param p1, "screen"    # Lcom/samsung/android/dualscreen/DualScreen;
    .param p2, "transit"    # I

    .prologue
    .line 925
    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_15

    .line 926
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 927
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->overrideNextAppTransition(Landroid/os/IBinder;Lcom/samsung/android/dualscreen/DualScreen;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 932
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_15
    :goto_15
    return-void

    .line 929
    :catch_16
    move-exception v1

    .line 930
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_15
.end method

.method public registerExpandableActivity()V
    .registers 6

    .prologue
    .line 1014
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1f

    .line 1015
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerExpandableActivity() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_1f
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2d

    .line 1019
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1023
    :cond_2d
    :try_start_2d
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_42

    .line 1024
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1025
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->registerExpandableActivity(Landroid/os/IBinder;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_42} :catch_43

    .line 1030
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_42
    :goto_42
    return-void

    .line 1027
    :catch_43
    move-exception v1

    .line 1028
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_42
.end method

.method public requestExpandedDisplayOrientation(I)V
    .registers 7
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1072
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1073
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestExpandedDisplayOrientation() : requestedOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_1d
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2b

    .line 1078
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1082
    :cond_2b
    :try_start_2b
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_40

    .line 1083
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1084
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->requestExpandedDisplayOrientation(Landroid/os/IBinder;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_40} :catch_41

    .line 1089
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_40
    :goto_40
    return-void

    .line 1086
    :catch_41
    move-exception v1

    .line 1087
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_40
.end method

.method public requestOppositeDisplayOrientation(I)V
    .registers 7
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 1042
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1043
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestOppositeDisplayOrientation() : requestedOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_1d
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2b

    .line 1048
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1052
    :cond_2b
    :try_start_2b
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_40

    .line 1053
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1054
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->requestOppositeDisplayOrientation(Landroid/os/IBinder;I)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_40} :catch_41

    .line 1059
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_40
    :goto_40
    return-void

    .line 1056
    :catch_41
    move-exception v1

    .line 1057
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_40
.end method

.method public setExpandable(Z)V
    .registers 7
    .param p1, "expandable"    # Z

    .prologue
    .line 1134
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1135
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setExpandable() expandable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    :cond_1d
    :try_start_1d
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_33

    .line 1139
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1140
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->setExpandable(Landroid/os/IBinder;Z)V

    .line 1149
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_32
    return-void

    .line 1142
    :cond_33
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "setExpandable() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "setExpandable() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_44} :catch_44

    .line 1146
    :catch_44
    move-exception v1

    .line 1147
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_32
.end method

.method public setFinishWithCoupledTask(Z)V
    .registers 6
    .param p1, "finish"    # Z

    .prologue
    .line 1157
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_c

    .line 1158
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFinishWithCoupledTask()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_c
    :try_start_c
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_22

    .line 1162
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1163
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->setFinishWithCoupledTask(Landroid/os/IBinder;Z)V

    .line 1172
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_21
    return-void

    .line 1165
    :cond_22
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "setFinishWithCoupledTask() is called from non-Activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "setFinishWithCoupledTask() should be called from Activity context"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_33} :catch_33

    .line 1169
    :catch_33
    move-exception v1

    .line 1170
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_21
.end method

.method public setScreenFocusChangeListener(Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;)V
    .registers 3
    .param p1, "l"    # Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    .prologue
    .line 1205
    invoke-virtual {p0}, getListenerInfo()Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    .line 1206
    invoke-virtual {p0}, updateListenerInfo()V

    .line 1207
    return-void
.end method

.method public switchScreen()V
    .registers 4

    .prologue
    .line 1234
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    .line 1235
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "switchScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    :cond_c
    invoke-virtual {p0}, getScreen()Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    .line 1238
    .local v0, "currentScreen":Lcom/samsung/android/dualscreen/DualScreen;
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_1a

    .line 1239
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p0, v1}, moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    .line 1243
    :cond_19
    :goto_19
    return-void

    .line 1240
    :cond_1a
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    if-ne v0, v1, :cond_19

    .line 1241
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {p0, v1}, moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_19
.end method

.method public unregisterExpandableActivity()V
    .registers 6

    .prologue
    .line 1275
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1f

    .line 1276
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterExpandableActivity() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_1f
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_2d

    .line 1280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context should be an Activity instance"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1284
    :cond_2d
    :try_start_2d
    iget-object v2, p0, mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_42

    .line 1285
    iget-object v0, p0, mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1286
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, getDefault()Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenManager;->unregisterExpandableActivity(Landroid/os/IBinder;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_42} :catch_43

    .line 1291
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_42
    :goto_42
    return-void

    .line 1288
    :catch_43
    move-exception v1

    .line 1289
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v1}, warningException(Ljava/lang/Exception;)V

    goto :goto_42
.end method

.method updateListenerInfo()V
    .registers 3

    .prologue
    .line 1307
    const/4 v0, 0x0

    .line 1308
    .local v0, "hasRegisteredListener":Z
    iget-object v1, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    if-eqz v1, :cond_c

    .line 1309
    iget-object v1, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    iget-object v1, v1, Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;->mScreenFocusChangeListener:Lcom/samsung/android/sdk/dualscreen/SDualScreenListener$ScreenFocusChangeListener;

    if-eqz v1, :cond_c

    .line 1310
    const/4 v0, 0x1

    .line 1313
    :cond_c
    if-nez v0, :cond_16

    .line 1314
    iget-object v1, p0, mDualScreenCallbacks:Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    invoke-direct {p0, v1}, unregisterDualScreenCallbacks(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    .line 1315
    const/4 v1, 0x0

    iput-object v1, p0, mListenerInfo:Lcom/samsung/android/dualscreen/DualScreenManager$ListenerInfo;

    .line 1317
    :cond_16
    return-void
.end method
