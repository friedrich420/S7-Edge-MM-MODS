.class Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;
.super Ljava/lang/Object;
.source "UsbChargingNotiDialogVzw.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw$2;->this$0:Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbChargingNotiDialogVzw;->finish()V

    .line 46
    return-void
.end method
