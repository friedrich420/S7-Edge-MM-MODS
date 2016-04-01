.class Lcom/android/server/audio/RotationHelper;
.super Ljava/lang/Object;
.source "RotationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RotationHelper$RotationCheckThread;,
        Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;,
        Lcom/android/server/audio/RotationHelper$AudioOrientationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService.RotationHelper"

.field private static sContext:Landroid/content/Context;

.field private static sDeviceRotation:I

.field private static sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

.field private static final sRotationLock:Ljava/lang/Object;

.field private static sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sRotationLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    sput v0, sDeviceRotation:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method static disable()V
    .registers 1

    .prologue
    .line 87
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_a

    .line 88
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    .line 92
    :goto_9
    return-void

    .line 90
    :cond_a
    sget-object v0, sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->disable()V

    goto :goto_9
.end method

.method static enable()V
    .registers 1

    .prologue
    .line 78
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    if-eqz v0, :cond_d

    .line 79
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    .line 83
    :goto_9
    invoke-static {}, updateOrientation()V

    .line 84
    return-void

    .line 81
    :cond_d
    sget-object v0, sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    goto :goto_9
.end method

.method static init(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 60
    if-nez p0, :cond_a

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_a
    sput-object p0, sContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    .line 65
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->enable()V

    .line 66
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 69
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "Not using WindowOrientationListener, reverting to OrientationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;->disable()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, sWindowOrientationListener:Lcom/android/server/audio/RotationHelper$AudioWindowOrientationListener;

    .line 72
    new-instance v0, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-direct {v0, p0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;-><init>(Landroid/content/Context;)V

    sput-object v0, sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    .line 73
    sget-object v0, sOrientationListener:Lcom/android/server/audio/RotationHelper$AudioOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/audio/RotationHelper$AudioOrientationListener;->enable()V

    .line 75
    :cond_3b
    return-void
.end method

.method private static publishRotation(I)V
    .registers 4
    .param p0, "rotation"    # I

    .prologue
    .line 111
    const-string v0, "AudioService.RotationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "publishing device rotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (x90deg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    packed-switch p0, :pswitch_data_46

    .line 126
    const-string v0, "AudioService.RotationHelper"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_29
    return-void

    .line 114
    :pswitch_2a
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_29

    .line 117
    :pswitch_31
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_29

    .line 120
    :pswitch_38
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_29

    .line 123
    :pswitch_3f
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_29

    .line 112
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_31
        :pswitch_38
        :pswitch_3f
    .end packed-switch
.end method

.method static updateOrientation()V
    .registers 3

    .prologue
    .line 100
    sget-object v1, sContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 102
    .local v0, "newRotation":I
    sget-object v2, sRotationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_16
    sget v1, sDeviceRotation:I

    if-eq v0, v1, :cond_21

    .line 104
    sput v0, sDeviceRotation:I

    .line 105
    sget v1, sDeviceRotation:I

    invoke-static {v1}, publishRotation(I)V

    .line 107
    :cond_21
    monitor-exit v2

    .line 108
    return-void

    .line 107
    :catchall_23
    move-exception v1

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_23

    throw v1
.end method
