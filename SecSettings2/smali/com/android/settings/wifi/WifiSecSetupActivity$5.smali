.class Lcom/android/settings/wifi/WifiSecSetupActivity$5;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity;I)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$5;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    iput p2, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$5;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$5;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity;

    iget v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$5;->val$id:I

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    # invokes: Lcom/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSecSetupActivity;->access$500(Lcom/android/settings/wifi/WifiSecSetupActivity;IJ)V

    .line 373
    return-void
.end method
