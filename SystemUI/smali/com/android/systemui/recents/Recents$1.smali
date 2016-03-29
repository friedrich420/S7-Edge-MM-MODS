.class Lcom/android/systemui/recents/Recents$1;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {p2}, Lcom/android/systemui/recents/IRecentsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    .line 425
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    .line 430
    return-void
.end method
