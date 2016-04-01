.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .registers 2

    .prologue
    .line 470
    iput-object p1, p0, this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 495
    return-void
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 500
    return-void
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 510
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 505
    return-void
.end method

.method public onTouchEndLocked(J)V
    .registers 3
    .param p1, "whenElapsedNanos"    # J

    .prologue
    .line 485
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 1

    .prologue
    .line 480
    return-void
.end method

.method public resetLocked()V
    .registers 1

    .prologue
    .line 490
    return-void
.end method
