.class Lcom/android/settings/dashboard/DashboardTileView$1;
.super Ljava/lang/Object;
.source "DashboardTileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardTileView;->showOnlineHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardTileView;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardTileView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileView$1;->this$0:Lcom/android/settings/dashboard/DashboardTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 252
    return-void
.end method
