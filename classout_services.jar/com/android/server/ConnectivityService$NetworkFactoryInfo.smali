.class Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkFactoryInfo"
.end annotation


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 6099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6100
    iput-object p1, p0, name:Ljava/lang/String;

    .line 6101
    iput-object p2, p0, messenger:Landroid/os/Messenger;

    .line 6102
    iput-object p3, p0, asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 6103
    return-void
.end method
