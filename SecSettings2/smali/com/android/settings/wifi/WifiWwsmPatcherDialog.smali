.class public Lcom/android/settings/wifi/WifiWwsmPatcherDialog;
.super Ljava/lang/Object;
.source "WifiWwsmPatcherDialog.java"


# static fields
.field private static DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 34
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiWwsmPatcherDialog;->DBG:Z

    return-void
.end method
