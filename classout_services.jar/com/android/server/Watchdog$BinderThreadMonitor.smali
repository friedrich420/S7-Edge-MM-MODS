.class final Lcom/android/server/Watchdog$BinderThreadMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderThreadMonitor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/Watchdog$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/Watchdog$1;

    .prologue
    .line 206
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 1

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Binder;->blockUntilThreadAvailable()V

    .line 210
    return-void
.end method
