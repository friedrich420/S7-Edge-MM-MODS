.class Lcom/android/settings/wifi/WifiSecSetupActivity$3;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$3;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/WifiSecSetupActivity;->revealWifiEffectInfinite(JZ)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$300(Lcom/android/settings/wifi/WifiSecSetupActivity;JZ)V

    .line 353
    return-void
.end method
