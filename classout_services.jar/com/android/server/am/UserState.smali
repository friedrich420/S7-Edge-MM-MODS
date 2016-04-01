.class public final Lcom/android/server/am/UserState;
.super Ljava/lang/Object;
.source "UserState.java"


# static fields
.field public static final STATE_BOOTING:I = 0x0

.field public static final STATE_KNOX_LOCKED:I = 0x4

.field public static final STATE_RUNNING:I = 0x1

.field public static final STATE_SHUTDOWN:I = 0x3

.field public static final STATE_STOPPING:I = 0x2


# instance fields
.field public initializing:Z

.field public mAdminUid:I

.field public mContainerState:I

.field public final mHandle:Landroid/os/UserHandle;

.field public final mProviderLastReportedFg:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mState:I

.field public final mStopCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IStopUserCallback;",
            ">;"
        }
    .end annotation
.end field

.field public switching:Z


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Z)V
    .registers 5
    .param p1, "handle"    # Landroid/os/UserHandle;
    .param p2, "initial"    # Z

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStopCallbacks:Ljava/util/ArrayList;

    .line 42
    iput v1, p0, mState:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, mContainerState:I

    .line 46
    iput v1, p0, mAdminUid:I

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mProviderLastReportedFg:Landroid/util/ArrayMap;

    .line 57
    iput-object p1, p0, mHandle:Landroid/os/UserHandle;

    .line 58
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 61
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 62
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_42

    .line 67
    iget v0, p0, mState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 69
    :goto_13
    iget-boolean v0, p0, switching:Z

    if-eqz v0, :cond_1c

    const-string v0, " SWITCHING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_1c
    iget-boolean v0, p0, initializing:Z

    if-eqz v0, :cond_25

    const-string v0, " INITIALIZING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    :cond_25
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 72
    return-void

    .line 63
    :pswitch_29
    const-string v0, "BOOTING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13

    .line 64
    :pswitch_2f
    const-string v0, "RUNNING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13

    .line 65
    :pswitch_35
    const-string v0, "STOPPING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13

    .line 66
    :pswitch_3b
    const-string v0, "SHUTDOWN"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13

    .line 62
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2f
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method
