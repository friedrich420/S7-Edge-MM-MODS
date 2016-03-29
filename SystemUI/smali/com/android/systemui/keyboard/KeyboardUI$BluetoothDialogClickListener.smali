.class final Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;
.super Ljava/lang/Object;
.source "KeyboardUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothDialogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/keyboard/KeyboardUI;
    .param p2, "x1"    # Lcom/android/systemui/keyboard/KeyboardUI$1;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 459
    const/4 v2, -0x1

    if-ne v2, p2, :cond_0

    const/4 v0, 0x1

    .line 460
    .local v0, "enable":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    # getter for: Lcom/android/systemui/keyboard/KeyboardUI;->mHandler:Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;
    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$1300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 461
    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/keyboard/KeyboardUI;->mDialog:Lcom/android/systemui/keyboard/BluetoothDialog;
    invoke-static {v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 462
    return-void

    .end local v0    # "enable":I
    :cond_0
    move v0, v1

    .line 459
    goto :goto_0
.end method
