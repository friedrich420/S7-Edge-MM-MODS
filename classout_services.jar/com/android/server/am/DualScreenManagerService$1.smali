.class Lcom/android/server/am/DualScreenManagerService$1;
.super Landroid/os/RemoteCallbackList;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DualScreenManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/DualScreenManagerService;)V
    .registers 2

    .prologue
    .line 122
    iput-object p1, p0, this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/IInterface;

    .prologue
    .line 122
    check-cast p1, Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1}, onCallbackDied(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;)V
    .registers 2
    .param p1, "callback"    # Lcom/samsung/android/multidisplay/dualscreen/IDualScreenCallbacks;

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 126
    invoke-virtual {p0, p1}, unregister(Landroid/os/IInterface;)Z

    .line 127
    return-void
.end method
