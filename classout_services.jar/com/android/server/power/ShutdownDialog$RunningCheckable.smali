.class Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.super Ljava/lang/Thread;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunningCheckable"
.end annotation


# instance fields
.field protected running:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    .line 445
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, running:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 445
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkRunning()Z
    .registers 2

    .prologue
    .line 448
    iget-boolean v0, p0, running:Z

    return v0
.end method
