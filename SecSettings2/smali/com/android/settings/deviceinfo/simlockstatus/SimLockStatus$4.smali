.class Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;
.super Ljava/lang/Object;
.source "SimLockStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus$4;->this$0:Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    # invokes: Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->rebootDevice()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$300(Lcom/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    .line 305
    return-void
.end method
