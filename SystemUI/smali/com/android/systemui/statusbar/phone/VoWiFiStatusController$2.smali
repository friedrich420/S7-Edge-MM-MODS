.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;
.super Ljava/lang/Object;
.source "VoWiFiStatusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->handleVoWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$2;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    # invokes: Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWifiIfNeeded()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->access$200(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V

    .line 146
    return-void
.end method
