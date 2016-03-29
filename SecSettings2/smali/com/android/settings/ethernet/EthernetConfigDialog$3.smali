.class Lcom/android/settings/ethernet/EthernetConfigDialog$3;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ethernet/EthernetConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$3;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 319
    const-string v0, "EtherenetSettings"

    const-string v1, "afterTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$3;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v0}, Lcom/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    .line 321
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 315
    const-string v0, "EtherenetSettings"

    const-string v1, "beforeTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 311
    const-string v0, "EtherenetSettings"

    const-string v1, "onTextChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method
