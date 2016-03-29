.class public Lcom/android/systemui/recents/RecentsService;
.super Landroid/app/Service;
.source "RecentsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsService$H;
    }
.end annotation


# instance fields
.field mBinder:Lcom/android/systemui/recents/IRecentsService$Stub;

.field private mH:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Lcom/android/systemui/recents/RecentsService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsService$H;-><init>(Lcom/android/systemui/recents/RecentsService;Lcom/android/systemui/recents/RecentsService$1;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/android/systemui/recents/RecentsService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsService$1;-><init>(Lcom/android/systemui/recents/RecentsService;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsService;->mBinder:Lcom/android/systemui/recents/IRecentsService$Stub;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/RecentsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/RecentsService;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService;->mH:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsService;->mBinder:Lcom/android/systemui/recents/IRecentsService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;I)Lcom/android/systemui/recents/Recents;

    .line 40
    return-void
.end method
