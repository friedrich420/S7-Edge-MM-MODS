.class Lcom/android/settings/location/LocationSettings$4;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$4;->this$0:Lcom/android/settings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$4;->this$0:Lcom/android/settings/location/LocationSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 460
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 461
    return-void
.end method
