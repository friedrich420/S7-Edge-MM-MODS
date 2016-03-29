.class Lcom/android/settings/FontPreview$9;
.super Ljava/lang/Object;
.source "FontPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreview;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreview;)V
    .locals 0

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/settings/FontPreview$9;->this$0:Lcom/android/settings/FontPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/settings/FontPreview$9;->this$0:Lcom/android/settings/FontPreview;

    invoke-virtual {v0}, Lcom/android/settings/FontPreview;->onCancelButtonPressed()V

    .line 1386
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1387
    return-void
.end method
