.class Lcom/android/server/usb/UsbService$2;
.super Landroid/content/pm/IKnoxModeChangeObserver$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbService;->registerKnoxModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbService;)V
    .registers 2

    .prologue
    .line 882
    iput-object p1, p0, this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxModeChange(I)V
    .registers 5
    .param p1, "personaId"    # I

    .prologue
    .line 887
    const-string v0, "UsbService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,set by knox"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbService;

    # invokes: Lcom/android/server/usb/UsbService;->setCurrentUser(I)V
    invoke-static {v0, p1}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;I)V

    .line 890
    iget-object v0, p0, this$0:Lcom/android/server/usb/UsbService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/usb/UsbService;->setByNox:Z
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->access$402(Lcom/android/server/usb/UsbService;Z)Z

    .line 891
    return-void
.end method
