.class abstract Lcom/android/server/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayAdapter$Listener;
    }
.end annotation


# static fields
.field public static final DISPLAY_DEVICE_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_DEVICE_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_DEVICE_EVENT_REMOVED:I = 0x3

.field private static final NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/display/DisplayAdapter$Listener;

.field private final mName:Ljava/lang/String;

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V
    .registers 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 63
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 65
    iput-object p4, p0, mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    .line 66
    iput-object p5, p0, mName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayAdapter;

    .prologue
    .line 36
    iget-object v0, p0, mListener:Lcom/android/server/display/DisplayAdapter$Listener;

    return-object v0
.end method

.method public static createColorTransform(I)Landroid/view/Display$ColorTransform;
    .registers 3
    .param p0, "colorTransform"    # I

    .prologue
    .line 145
    new-instance v0, Landroid/view/Display$ColorTransform;

    sget-object v1, NEXT_COLOR_TRANSFORM_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1, p0}, Landroid/view/Display$ColorTransform;-><init>(II)V

    return-object v0
.end method

.method public static createMode(IIF)Landroid/view/Display$Mode;
    .registers 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "refreshRate"    # F

    .prologue
    .line 140
    new-instance v0, Landroid/view/Display$Mode;

    sget-object v1, NEXT_DISPLAY_MODE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/view/Display$Mode;-><init>(IIIF)V

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 112
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method public registerLocked()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method

.method protected final sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .registers 5
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .prologue
    .line 119
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayAdapter$1;-><init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method protected final sendTraversalRequestLocked()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayAdapter$2;-><init>(Lcom/android/server/display/DisplayAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method
