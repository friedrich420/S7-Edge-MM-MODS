.class Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;
.super Ljava/lang/Object;
.source "WifiMaliciousHotspotDetectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;

    # invokes: Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->handleDisconnect()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->access$000(Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiMaliciousHotspotDetectionActivity;->finish()V

    goto :goto_0
.end method
