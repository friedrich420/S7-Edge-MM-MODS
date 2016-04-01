.class Lcom/android/server/FMRadioService$ListenerRecord;
.super Ljava/lang/Object;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerRecord"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;


# direct methods
.method public constructor <init>(Lcom/samsung/media/fmradio/internal/IFMEventListener;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/media/fmradio/internal/IFMEventListener;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    iput-object p2, p0, mBinder:Landroid/os/IBinder;

    .line 1337
    iput-object p1, p0, mListener:Lcom/samsung/media/fmradio/internal/IFMEventListener;

    .line 1338
    return-void
.end method
