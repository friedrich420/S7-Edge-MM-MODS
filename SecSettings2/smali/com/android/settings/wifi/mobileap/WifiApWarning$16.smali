.class Lcom/android/settings/wifi/mobileap/WifiApWarning$16;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$16;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)V

    .line 707
    return-void
.end method
